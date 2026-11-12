@echo off
rem Takim Ajan 0.2.3 - elle kurulum (kullanici duzeyi). Cift tiklayarak calistirilir.
rem Ajan dosyalarini ve 3 beceri klasorunu Claude'un kullanici klasorune kopyalar; ayni adli eskilerinin yerine yazar.
rem Hedef yol yalniz alt yordamlarda kullanilir: for govdesinde yoldaki yuzde-A, yuzde-S dongu degiskeni sanilir. Kaldirmak icin: kaldir.cmd
setlocal DisableDelayedExpansion
set "KAYNAK=%~dp0"
set "HEDEF="
if defined USERPROFILE set "HEDEF=%USERPROFILE%\.claude"
if defined CLAUDE_CONFIG_DIR set "HEDEF=%CLAUDE_CONFIG_DIR%"
set "AJANLAR=mavi-yazar kirmizi-saldirgan pembe-denetci mor-sorgucu yesil-gercek turuncu-deneyci gri-sadelestirici siyah-hafiza beyaz-kayitci sari-kullanici turkuaz-verimlilik"
set "BECERILER=takim-dongu takim-tek takim-durum"
set "SAYI=0"

echo.
echo Takim Ajan kuruluyor
echo   Kaynak: "%KAYNAK%"
echo   Hedef : "%HEDEF%"
echo.

if not defined HEDEF goto profilyok
if not exist "%KAYNAK%agents\mavi-yazar.md" goto kaynakyok
if not exist "%KAYNAK%skills\takim-dongu\SKILL.md" goto kaynakyok
rem Kaynak=hedef: iki yol kisa tam yola cevrilir (8.3, sondaki \, / farki); gecikmeli genisleme for govdesini korur, endlocal ! iceren yolu korur.
setlocal EnableDelayedExpansion
for %%I in ("!KAYNAK!.") do for %%J in ("!HEDEF!\.") do (endlocal& if /I "%%~sfI"=="%%~sfJ" goto ayniyer)

if not exist "%HEDEF%\agents\" mkdir "%HEDEF%\agents"
if not exist "%HEDEF%\agents\" goto hata
if not exist "%HEDEF%\skills\" mkdir "%HEDEF%\skills"
if not exist "%HEDEF%\skills\" goto hata

for %%A in (%AJANLAR%) do call :ajan %%A || goto hata
for %%S in (%BECERILER%) do call :beceri %%S || goto hata

rem Sonuc denetimi: basari sozu ancak 14 parca yerinde sayildiktan sonra yazilir (liste eksilirse sayi tutmaz).
if not "%SAYI%"=="14" goto hata
if not exist "%HEDEF%\skills\takim-dongu\sablonlar\kurallar.md" goto hata

echo Kuruldu: takim ajanlari ve 3 beceri (yerinde olduklari denetlendi).
echo Simdi Claude'u kapatip yeniden acin; sonra ornegin sunu yazin:
echo   su dosyayi takimlara incelet
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 0

:ajan
if exist "%HEDEF%\agents\%~1.md" del /F /Q "%HEDEF%\agents\%~1.md" >nul 2>&1
copy /Y "%KAYNAK%agents\%~1.md" "%HEDEF%\agents\%~1.md" >nul || exit /b 1
if not exist "%HEDEF%\agents\%~1.md" exit /b 1
set /a SAYI+=1 >nul
exit /b 0

:beceri
if exist "%HEDEF%\skills\%~1\" rmdir /S /Q "%HEDEF%\skills\%~1" >nul 2>&1
if exist "%HEDEF%\skills\%~1\" exit /b 1
xcopy /E /I /Y /Q "%KAYNAK%skills\%~1" "%HEDEF%\skills\%~1" >nul || exit /b 1
if not exist "%HEDEF%\skills\%~1\SKILL.md" exit /b 1
set /a SAYI+=1 >nul
exit /b 0

:profilyok
echo HATA: Kullanici klasoru bulunamadi (USERPROFILE tanimli degil). Hicbir sey kopyalanmadi.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 3

:kaynakyok
echo HATA: agents ve skills klasorleri bu dosyanin yaninda bulunamadi. Hicbir sey kopyalanmadi.
echo Paketi sikistirilmis dosyanin (zip) icinden actiysaniz once bir klasore cikarin,
echo sonra o klasordeki kur.cmd dosyasina cift tiklayin.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 2

:ayniyer
echo HATA: Paket Claude'un kendi klasorunden calistirildi; hicbir sey silinmedi.
echo Paketi baska bir klasore cikarin, oradaki kur.cmd dosyasina cift tiklayin.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 2

:hata
echo HATA: Kurulum tamamlanamadi. Kurulum yarim kalmis olabilir.
echo Claude aciksa kapatin ve bu dosyayi yeniden calistirin; ya da kaldir.cmd ile temizleyin.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 1
