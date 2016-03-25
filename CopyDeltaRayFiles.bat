REM
REM This script is from BLHeli FW - Delta Ray Edition - see https://github.com/imboeschi/BLHeli-FW---Delta-Ray-Edition
REM
@ECHO off
@ECHO ***** Copying files           *****
Break ON
REM Added /D switch to prevent xcopy from overwriting newer files (in case the script gets run accidentally)
xcopy /D /Y /E Atmel\BLHeli-master\* .\BLHeli-master\Atmel
cd BLHeli-master\Atmel
CopyHexFiles.bat
@pause
