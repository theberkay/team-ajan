@echo off
rem Takim Ajan 0.2.3 - elle kurulumu kaldirir. Yalniz kur.cmd'nin kopyaladigi ajan dosyalarini ve 3 beceri klasorunu siler.
rem Projelerinizdeki takim\ klasorlerine (raporlar, defterler) DOKUNMAZ. Hedef yol yalniz :sil alt yordaminda kullanilir.
setlocal DisableDelayedExpansion
set "HEDEF="
if defined USERPROFILE set "HEDEF=%USERPROFILE%\.claude"
if defined CLAUDE_CONFIG_DIR set "HEDEF=%CLAUDE_CONFIG_DIR%"
set "AJANLAR=mavi-yazar kirmizi-saldirgan pembe-denetci mor-sorgucu yesil-gercek turuncu-deneyci gri-sadelestirici siyah-hafiza beyaz-kayitci sari-kullanici turkuaz-verimlilik"
set "BECERILER=takim-dongu takim-tek takim-durum"
set "BULUNDU=0"
set "KALAN=0"

if not defined HEDEF goto profilyok

echo.
echo Takim Ajan kaldirilacak: "%HEDEF%"
echo Silinecekler: ajan dosyalari ve 3 beceri klasoru (takim-dongu, takim-tek, takim-durum).
echo.
echo Silmek icin bir tusa basin; vazgecmek icin bu pencereyi kapatin.
pause >nul
echo.

for %%A in (%AJANLAR%) do call :sil "agents\%%A.md"
for %%S in (%BECERILER%) do call :sil "skills\%%S"

if "%KALAN%"=="1" goto kalan
if "%BULUNDU%"=="0" goto yoktu

echo Kaldirildi: Takim Ajan dosyalarindan geriye kalan yok (denetlendi).
echo Claude'u kapatip yeniden acin.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 0

:sil
if not exist "%HEDEF%\%~1" exit /b 0
set "BULUNDU=1"
if exist "%HEDEF%\%~1\" rmdir /S /Q "%HEDEF%\%~1" >nul 2>&1
if exist "%HEDEF%\%~1" del /F /Q "%HEDEF%\%~1" >nul 2>&1
if not exist "%HEDEF%\%~1" exit /b 0
set "KALAN=1"
echo   Silinemedi: "%HEDEF%\%~1"
exit /b 0

:yoktu
echo Bu klasorde kurulu Takim Ajan dosyasi bulunamadi; silinecek bir sey yoktu.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 0

:kalan
echo.
echo UYARI: Yukaridaki dosyalar silinemedi; kaldirma TAMAMLANMADI.
echo Claude aciksa kapatin ve bu dosyayi yeniden calistirin.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 1

:profilyok
echo HATA: Kullanici klasoru bulunamadi (USERPROFILE tanimli degil). Hicbir sey silinmedi.
echo.
echo Kapatmak icin bir tusa basin.
pause >nul
exit /b 3
