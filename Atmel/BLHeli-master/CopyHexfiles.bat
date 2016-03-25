REM
REM This script is from  BLHeli FW - Delta Ray Edition
REM (see https://github.com/imboeschi/BLHeli-FW---Delta-Ray-Edition)
REM
@ECHO off
@ECHO ***** Copying files           *****
Break ON
xcopy /Q /Y Output\Hex\*.Hex ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
xcopy /Q /Y Output\Hex\*.Hex ..\..\Atmel\BLHeli-master\Output\Hex
REM Copy to BLHeli-master\Hex files just to ensure that only latest versions are consistently present
xcopy /Q /Y Output\Hex\*.Hex "..\..\Atmel\BLHeli-master\Hex files"
xcopy /Q /Y Output\Eep\*.EEP ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
xcopy /Q /Y Output\Eep\*.EEP ..\..\Atmel\BLHeli-master\Output\Eep
REM Copy to BLHeli-master\Eeprom files just to ensure that only latest versions are consistently present
xcopy /Q /Y Output\Eep\*.EEP "..\..\Atmel\BLHeli-master\Eeprom files"
