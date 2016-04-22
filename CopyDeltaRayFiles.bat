@echo off
REM
REM This script is from BLHeli FW - Delta Ray Edition - see https://github.com/imboeschi/BLHeli-FW---Delta-Ray-Edition
REM
ECHO ***** Copying files           *****
REM Check destination directory structure and correct if nested directories are found
IF EXIST ..\..\BLHeli-FW---Delta-Ray-Edition-master\BLHeli-FW---Delta-Ray-Edition-master\README.md (
  xcopy /Y /E ..\..\BLHeli-FW---Delta-Ray-Edition-master\BLHeli-FW---Delta-Ray-Edition-master\* ..\..\BLHeli-FW---Delta-Ray-Edition-master
  del /S /Q README.md
  REM Now execute the copied version of the script to complete deletion
  cd ..
  ..\CopyDeltaRayFiles.bat
) ELSE (
  IF EXIST .\BLHeli-FW---Delta-Ray-Edition-master (
    rmdir /S /Q .\BLHeli-FW---Delta-Ray-Edition-master
  )
)

IF NOT EXIST .\BLHeli-master (
  set blfw=false
)
IF NOT EXIST .\BLHeliSuite14403 (
  set blpc=false
)

if "%blfw%" == "false" set unzip=true
if "%blpc%" == "false" set unzip=true
if defined unzip (
  echo **** ERROR: Please expand the BLHeli-master and BLHeliSuite14403 zip archives first
  echo Then run the script again
  pause
  exit
)

IF EXIST .\BLHeli-master\BLHeli-master (
xcopy /Y /E .\BLHeli-master\BlHeli-master\* .\BLHeli-master
rmdir /S /Q .\BLHeli-master\BlHeli-master
)
IF EXIST .\BLHeliSuite14403\BLHeliSuite14403 (
xcopy /Y /E .\BLHeliSuite14403\BLHeliSuite14403\* .\BLHeli-master
rmdir /S /Q .\BLHeliSuite14403\BLHeliSuite14403
)
del /Q /S .\BLHeli-master\Atmel\*_MAIN_* .\BLHeli-master\Atmel\*_TAIL_*
xcopy /Y /E Atmel\BLHeli-master\* .\BLHeli-master\Atmel
xcopy /Y /E Atmel\BLHeliSuite14403\* .\BLHeliSuite14403
cd BLHeli-master\Atmel
CopyHexFiles.bat
pause
