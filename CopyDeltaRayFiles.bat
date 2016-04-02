REM
REM This script is from BLHeli FW - Delta Ray Edition - see https://github.com/imboeschi/BLHeli-FW---Delta-Ray-Edition
REM
@ECHO off
@ECHO ***** Copying files           *****
Break ON
del /Q /S .\BLHeli-master\Atmel\*_MAIN_* .\BLHeli-master\Atmel\*_TAIL_*
REM Added /D switch to prevent xcopy from overwriting newer files (in case the script gets run accidentally)
xcopy /D /Y /E Atmel\BLHeli-master\* .\BLHeli-master\Atmel
xcopy /D /Y /E Atmel\BLHeliSuite14403\* .\BLHeliSuite14403
cd BLHeli-master\Atmel
CopyHexFiles.bat
@pause
