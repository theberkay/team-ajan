# Takim Ajan - yapisal denetim. Hicbir sey kurmaz, hicbir dosyayi degistirmez; yalniz okur.
# Kullanim:  powershell -NoProfile -ExecutionPolicy Bypass -File tests\denetle.ps1 [-Kok <paket klasoru>]
# Cikis kodu: 0 temiz, 1 sorun var, 2 kullanim hatasi.
# Bu dosya bilerek yalniz ASCII karakter icerir (Windows PowerShell 5.1 BOM'suz dosyayi ANSI okur).
# Neye BAKMAZ: Claude Code'un paketi gercekten yukleyip yuklemedigine, becerilerin tetiklenmesine, metinlerin
# anlamca tutarli olup olmadigina, araclarin ise yeterliligine, sablon iceriklerine, .cmd dosyalarinin davranisina,
# BOM'a. Esikler (20000, 1536) baslangic degeridir. "Temiz" yalniz asagidaki yapisal denetimler icindir.
param([string]$Kok = (Split-Path -Parent $PSScriptRoot))

$ErrorActionPreference = 'Stop'
if (-not (Test-Path -LiteralPath $Kok -PathType Container)) { Write-Output "KULLANIM HATASI: klasor yok: $Kok"; exit 2 }
$Kok = (Get-Item -LiteralPath $Kok).FullName.TrimEnd('\')
$script:sorun = 0
$script:denetim = 0
function Sorun([string]$m) { $script:sorun++; Write-Output ("SORUN: " + $m) }
function Denetim([string]$ad) { $script:denetim++; Write-Output ("-- " + $ad) }
function Oku([string]$p) { return [IO.File]::ReadAllText($p, [Text.Encoding]::UTF8) }
function Goreli([string]$p) { return $p.Substring($Kok.Length).TrimStart('\') }

$bolum = "b\u00f6l\u00fcm"
$gecerliRenk = @('red','blue','green','yellow','purple','orange','pink','cyan')
$gecerliArac = @('Read','Grep','Glob','Write','Edit','Bash','PowerShell','WebFetch','WebSearch')
$beklenenAjan = @('mavi-yazar','kirmizi-saldirgan','pembe-denetci','mor-sorgucu','yesil-gercek','turuncu-deneyci','gri-sadelestirici','siyah-hafiza','beyaz-kayitci','sari-kullanici','turkuaz-verimlilik')
$beklenenBeceri = @('takim-dongu','takim-tek','takim-durum')

function OnBilgi([string]$metin) {
    $s = @{}
    $t = $metin -replace "`r`n", "`n"
    if (-not $t.StartsWith("---`n")) { return $null }
    $son = $t.IndexOf("`n---", 4)
    if ($son -lt 0) { return $null }
    foreach ($satir in $t.Substring(4, $son - 4).Split("`n")) {
        if ($satir -match '^([A-Za-z-]+):\s*(.*)$') { $ad = $Matches[1]; $v = $Matches[2].Trim(); $s[$ad] = $v.Trim('"'); if (-not $v.StartsWith('"') -and $v -match ':\s') { $s['__bozuk'] = $satir } }
        elseif ($satir.Trim() -ne '') { $s['__bozuk'] = $satir }
    }
    return $s
}

# Paketin metin dosyalari (calisma alani takim\ ve surum denetimi klasoru haric)
$tumDosya = Get-ChildItem -LiteralPath $Kok -Recurse -File | Where-Object {
    $g = Goreli $_.FullName
    ($g -notmatch '^takim\\') -and ($g -notmatch '^\.git\\')
}
$metinDosya = $tumDosya | Where-Object { $_.Extension -in '.md','.json','.cmd','.ps1','.py','.txt' }

# 1. Ajanlar
Denetim "1 ajan dosyalari (on bilgi, ad, araclar, renk)"
$ajanKlasor = Join-Path $Kok 'agents'
$ajanAd = @()
$renkler = @{}
if (-not (Test-Path -LiteralPath $ajanKlasor)) { Sorun "agents klasoru yok" } else {
    foreach ($f in (Get-ChildItem -LiteralPath $ajanKlasor -Filter *.md -File)) {
        $ob = OnBilgi (Oku $f.FullName)
        $g = Goreli $f.FullName
        if ($null -eq $ob) { Sorun "$g : on bilgi (--- ... ---) yok ya da kapanmamis"; continue }
        if ($ob.ContainsKey('__bozuk')) { Sorun "$g : on bilgide anahtar: deger bicimine uymayan satir ya da tirnaksiz degerde ': '" }
        if ($ob['name'] -cne $f.BaseName) { Sorun "$g : name '$($ob['name'])' dosya adiyla ayni degil" }
        $ajanAd += $f.BaseName
        if (-not $ob['description']) { Sorun "$g : description bos" }
        if (-not $ob['tools']) { Sorun "$g : tools satiri yok (yoksa butun araclar devralinir)" }
        else { foreach ($a in ($ob['tools'] -split ',')) { if ($gecerliArac -cnotcontains $a.Trim()) { Sorun "$g : taninmayan arac '$($a.Trim())'" } } }
        if ($ob.ContainsKey('color')) {
            $r = $ob['color']
            if ($gecerliRenk -cnotcontains $r) { Sorun "$g : gecersiz renk '$r'" }
            if ($renkler.ContainsKey($r)) { Sorun "$g : renk '$r' $($renkler[$r]) ile ayni" } else { $renkler[$r] = $f.BaseName }
        }
    }
    foreach ($b in $beklenenAjan) { if ($ajanAd -cnotcontains $b) { Sorun "agents\$b.md yok" } }
    foreach ($a in $ajanAd) { if ($beklenenAjan -cnotcontains $a) { Sorun "agents\$a.md beklenen ajanlar arasinda degil (kur.cmd kopyalamaz)" } }
}

# 2. Beceriler
Denetim "2 beceriler (on bilgi, ad, boyut < 20000 bayt, 'takim' sozu)"
foreach ($b in $beklenenBeceri) {
    $p = Join-Path $Kok "skills\$b\SKILL.md"
    if (-not (Test-Path -LiteralPath $p)) { Sorun "skills\$b\SKILL.md yok"; continue }
    $bayt = (Get-Item -LiteralPath $p).Length
    if ($bayt -ge 20000) { Sorun "skills\$b\SKILL.md $bayt bayt (20000'den kucuk olmali)" }
    $ob = OnBilgi (Oku $p)
    if ($null -eq $ob) { Sorun "skills\$b\SKILL.md : on bilgi yok"; continue }
    if ($ob.ContainsKey('__bozuk')) { Sorun "skills\$b\SKILL.md : on bilgide bicime uymayan satir ya da tirnaksiz degerde ': '" }
    if ($ob['name'] -cne $b) { Sorun "skills\$b\SKILL.md : name '$($ob['name'])' klasor adiyla ayni degil" }
    if (-not $ob['description']) { Sorun "skills\$b\SKILL.md : description bos" }
    else {
        if ($ob['description'].Length -gt 1536) { Sorun "skills\$b\SKILL.md : description 1536 karakterden uzun" }
        if ($ob['description'] -notmatch "tak\u0131m") { Sorun "skills\$b\SKILL.md : description icinde 'takim' sozu gecmiyor" }
    }
}
foreach ($d in (Get-ChildItem -LiteralPath (Join-Path $Kok 'skills') -Directory -ErrorAction SilentlyContinue)) { if ($beklenenBeceri -cnotcontains $d.Name) { Sorun "skills\$($d.Name) beklenen uc beceri arasinda degil (kur.cmd kopyalamaz)" } }
foreach ($s in 'kurallar.md','gorev.md','rapor.md','dersler.md','defterler.md') {
    if (-not (Test-Path -LiteralPath (Join-Path $Kok "skills\takim-dongu\sablonlar\$s"))) { Sorun "sablon yok: skills\takim-dongu\sablonlar\$s" }
}

# 3. .cmd dosyalari
Denetim "3 .cmd dosyalari (ASCII + CRLF, ajan ve beceri listeleri)"
foreach ($c in 'kur.cmd','kaldir.cmd') {
    $p = Join-Path $Kok $c
    if (-not (Test-Path -LiteralPath $p)) { Sorun "$c yok"; continue }
    $b = [IO.File]::ReadAllBytes($p)
    $ascii = $true; $ciplak = 0
    for ($i = 0; $i -lt $b.Length; $i++) {
        if ($b[$i] -gt 127) { $ascii = $false }
        if ($b[$i] -eq 10 -and ($i -eq 0 -or $b[$i - 1] -ne 13)) { $ciplak++ }
        if ($b[$i] -eq 13 -and ($i -eq $b.Length - 1 -or $b[$i + 1] -ne 10)) { $ciplak++ }
    }
    if (-not $ascii) { Sorun "$c : ASCII disi bayt var" }
    if ($ciplak -gt 0) { Sorun "$c : $ciplak satir sonu CRLF degil" }
    $t = [Text.Encoding]::ASCII.GetString($b)
    foreach ($l in @(@('AJANLAR', $beklenenAjan), @('BECERILER', $beklenenBeceri))) { $m = [regex]::Match($t, '(?m)^set "' + $l[0] + '=([^"]*)"'); if (-not $m.Success -or (Compare-Object ($m.Groups[1].Value -split ' ') $l[1])) { Sorun "$c : $($l[0]) listesi beklenenle ayni degil" } }
    if ($c -eq 'kaldir.cmd' -and $t -notmatch '(?ms)^:kalan\b(?:(?!^:).)*?^exit /b 1\s*$') { Sorun "kaldir.cmd : silinemeyen kalirsa sifirdan farkli cikis yok" }
    $parca = $beklenenAjan.Count + $beklenenBeceri.Count
    if ($c -eq 'kur.cmd' -and $t -notmatch ('(?m)^if not "%SAYI%"=="' + $parca + '" goto hata')) { Sorun "kur.cmd : sonuc denetimi ($parca parca sayimi = ajan + beceri listesi) yok" }
}

# 4. JSON
Denetim "4 JSON dosyalari (ayrisma, ad ve surum)"
$pj = $null; $mj = $null
try { $pj = (Oku (Join-Path $Kok '.claude-plugin\plugin.json')) | ConvertFrom-Json } catch { Sorun ".claude-plugin\plugin.json ayrismiyor ya da yok" }
try { $mj = (Oku (Join-Path $Kok '.claude-plugin\marketplace.json')) | ConvertFrom-Json } catch { Sorun ".claude-plugin\marketplace.json ayrismiyor ya da yok" }
if ($pj) {
    if (-not $pj.name) { Sorun "plugin.json : name yok" }
    if ($pj.version -notmatch '^\d+\.\d+\.\d+$') { Sorun "plugin.json : version 'a.b.c' biciminde degil" }
    $rd = Join-Path $Kok 'README.md'
    if ((Test-Path -LiteralPath $rd) -and $pj.version -and ((Oku $rd) -notmatch ('(?<![\d.])' + [regex]::Escape($pj.version) + '(?![\d.]*\d)'))) { Sorun "README.md : plugin.json surumu ($($pj.version)) gecmiyor" }
}
if ($mj) {
    if (-not $mj.name -or -not $mj.owner.name -or -not $mj.plugins) { Sorun "marketplace.json : name / owner.name / plugins eksik" }
    elseif ($pj -and $mj.plugins[0].name -cne $pj.name) { Sorun "marketplace.json : eklenti adi plugin.json ile ayni degil" }
    elseif ($mj.plugins[0].source -notmatch '^\./') { Sorun "marketplace.json : source './' ile baslamiyor" }
}

# 5. Yol atiflari
Denetim "5 metinlerde anilan paket ici yollar ve calisma alani dosya adlari"
$kurallarYol = Join-Path $Kok 'skills\takim-dongu\sablonlar\kurallar.md'
$kurallar = ''
if (Test-Path -LiteralPath $kurallarYol) { $kurallar = Oku $kurallarYol }
$izinliDefter = @()
foreach ($m in [regex]::Matches($kurallar, '`([a-z-]+\.md)`')) { $izinliDefter += $m.Groups[1].Value }
$izinliDefter += 'rapor.md'
$izinliKlasor = @('turlar','sablonlar','gelen','yedek','arsiv')
foreach ($f in ($metinDosya | Where-Object { $_.Extension -eq '.md' })) {
    $g = Goreli $f.FullName
    $t = Oku $f.FullName
    foreach ($m in [regex]::Matches($t, '`([^`\r\n]+)`')) {
        $y = $m.Groups[1].Value
        if ($y -match '[<>*]' -or $y -match "\u2026" -or $y -match '\s') { continue }
        if ($y -match '^(agents|skills|docs|tests|\.claude-plugin)[/\\]' -or $y -match '^(kur|kaldir)\.cmd$') {
            if (-not (Test-Path -LiteralPath (Join-Path $Kok ($y -replace '/', '\')))) { Sorun "$g : anilan yol pakette yok: $y" }
        }
        elseif ($y -match '^\$\{CLAUDE_SKILL_DIR\}/(.*)$') {
            $hedef = Join-Path $f.DirectoryName ($Matches[1] -replace '/', '\')
            if (-not (Test-Path -LiteralPath $hedef)) { Sorun "$g : beceri klasorune gore yol yok: $y" }
        }
        elseif ($y -match '^takim/([^/]+)(/.*)?$') {
            $ilk = $Matches[1]; $devam = $Matches[2]
            if ($devam) { if ($izinliKlasor -cnotcontains $ilk) { Sorun "$g : taninmayan calisma alani klasoru: $y" } }
            elseif ($ilk -match '\.md$' -and $izinliDefter -cnotcontains $ilk) { Sorun "$g : kurallar.md sahiplik tablosunda olmayan defter: $y" }
        }
    }
    foreach ($m in [regex]::Matches($t, '\]\(([^)#\s]+)\)')) {
        $y = $m.Groups[1].Value
        if ($y -match '^[a-z]+://') { continue }
        if (-not (Test-Path -LiteralPath (Join-Path $f.DirectoryName ($y -replace '/', '\')))) { Sorun "$g : baglanti hedefi yok: $y" }
    }
}

# 6. kurallar.md bolum atiflari
Denetim "6 'kurallar.md bolum N' atiflari var olan bolume gidiyor"
$bolumler = @()
foreach ($m in [regex]::Matches($kurallar, '(?m)^## (\d+)\. ')) { $bolumler += [int]$m.Groups[1].Value }
if ($bolumler.Count -eq 0) { Sorun "kurallar.md : numarali bolum basligi bulunamadi" }
for ($i = 0; $i -lt $bolumler.Count; $i++) { if ($bolumler[$i] -ne $i + 1) { Sorun "kurallar.md : bolum numaralari sirali degil ($($bolumler -join ','))"; break } }
foreach ($f in ($metinDosya | Where-Object { $_.Extension -eq '.md' })) {
    $g = Goreli $f.FullName
    $t = Oku $f.FullName
    $kalip = @("kurallar\.md``?\s+$bolum\s+(\d+)", "kurallar\.md``?[^\r\n.|]{0,40}?(\d+)\.\s+$bolum")
    if ($f.FullName -eq $kurallarYol) { $kalip = @("(?<![A-Za-z.])$bolum\s+(\d+)") }
    foreach ($k in $kalip) {
        foreach ($m in [regex]::Matches($t, $k)) {
            $n = [int]$m.Groups[1].Value
            if ($bolumler -notcontains $n) { Sorun "$g : kurallar.md icinde olmayan bolume atif: $n" }
        }
    }
}

# 7. Kisisel yol, projeye ozgu soz, eski terim kalintisi
Denetim "7 kisisel yol, projeye ozgu soz ve eski terim kalintisi yok"
$kisisel = 'C:[\\/]' + 'Users[\\/]'
$ozgu = ('Fix' + 'cos') + '|' + ('Dis' + 'cord')
$eski = "\[(E|\u00d6|K|T|D)\]|(?<!B\u0130LG\u0130-)EKS\u0130K"
foreach ($f in $metinDosya) {
    $g = Goreli $f.FullName
    $t = Oku $f.FullName
    if ([regex]::IsMatch($t, $kisisel, 'IgnoreCase,CultureInvariant')) { Sorun "$g : kisisel yol (surucu + Users klasoru) geciyor" }
    if ([regex]::IsMatch($t, $ozgu, 'IgnoreCase,CultureInvariant')) { Sorun "$g : projeye ozgu soz geciyor" }
    if ($f.Extension -eq '.md' -and $t -cmatch $eski) { Sorun "$g : 1. surumden kalan terim ya da etiket geciyor: '$($Matches[0])'" }
}

# 8. README ile beceri ve kurallar tablolari
Denetim "8 README takim tablosu SKILL.md ile, boy tablosu kurallar.md ile ayni"
$readmeYol = Join-Path $Kok 'README.md'
$skillYol = Join-Path $Kok 'skills\takim-dongu\SKILL.md'
if ((Test-Path -LiteralPath $readmeYol) -and (Test-Path -LiteralPath $skillYol)) {
    $readme = Oku $readmeYol; $skill = Oku $skillYol
    function TakimSatir([string]$t) {
        $s = @{}
        foreach ($m in [regex]::Matches($t, '(?m)^\|[^|\r\n]*\|\s*`([a-z]+-[a-z]+)`\s*\|\s*([^|\r\n]+?)\s*\|')) { $s[$m.Groups[1].Value] = $m.Groups[2].Value }
        return $s
    }
    $rt = TakimSatir $readme; $st = TakimSatir $skill
    foreach ($a in $beklenenAjan) {
        if (-not $rt.ContainsKey($a)) { Sorun "README.md : takim tablosunda $a yok" }
        elseif (-not $st.ContainsKey($a)) { Sorun "takim-dongu\SKILL.md : takim tablosunda $a yok" }
        elseif ($rt[$a] -cne $st[$a]) { Sorun "README.md ile SKILL.md takim tablosu farkli: $a" }
    }
    function BoySatir([string]$t) {
        $s = @{}
        foreach ($m in [regex]::Matches($t, "(?m)^\|\s*(H\u0131zl\u0131|Normal|Tam)\s*\|\s*([^|\r\n]+?)\s*\|\s*(\d+)\s*\|")) { $s[$m.Groups[1].Value] = ($m.Groups[2].Value + ' / ' + $m.Groups[3].Value) }
        return $s
    }
    $rb = BoySatir $readme; $kb = BoySatir $kurallar
    foreach ($b in @("H\u0131zl\u0131", 'Normal', 'Tam')) {
        $ad = [regex]::Unescape($b)
        if (-not $rb.ContainsKey($ad) -or -not $kb.ContainsKey($ad)) { Sorun "boy tablosu satiri eksik (README / kurallar): $ad" }
        elseif ($rb[$ad] -cne $kb[$ad]) { Sorun "boy tablosu README ile kurallar.md icinde ayni degil: $ad" }
    }
} else { Sorun "README.md ya da skills\takim-dongu\SKILL.md yok" }

$sonuc = 'TEMIZ'
if ($script:sorun -gt 0) { $sonuc = 'SORUNLU' }
Write-Output ("OZET: " + $script:denetim + " denetim, " + $script:sorun + " sorun -> " + $sonuc)
if ($script:sorun -gt 0) { exit 1 } else { exit 0 }
