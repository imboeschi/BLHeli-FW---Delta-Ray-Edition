REM
REM This script is from  BLHeli FW - Delta Ray Edition
REM (see https://github.com/imboeschi/BLHeli-FW---Delta-Ray-Edition)
REM
@ECHO off
@ECHO ***** Copying files           *****
Break ON
xcopy /Q /Y Output\Hex\*.Hex ..\..\BLHeliSuite14403\BLHeli_HexFiles\Atmel
REM Copy to BLHeli-master\Hex files just to ensure that only latest versions are consistently present
xcopy /Q /Y Output\Hex\*.Hex "Hex files"
xcopy /Q /Y Output\Eep\*.EEP ..\..\BLHeliSuite14403\BLHeli_HexFiles\Atmel
REM Copy to BLHeli-master\Eeprom files just to ensure that only latest versions are consistently present
xcopy /Q /Y Output\Eep\*.EEP "Eeprom files"
