@ECHO off
@ECHO ***** Copying files           *****
Break ON
xcopy /Y /F Output\Hex\*.Hex ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
xcopy /Y /F Output\Hex\*.Hex ..\..\Atmel\BLHeli-master\Output\Hex
xcopy /Y /F Output\Hex\*.Hex "..\..\Atmel\BLHeli-master\Hex files"
xcopy /Y /F Output\Eep\*.EEP ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
xcopy /Y /F Output\Eep\*.EEP ..\..\Atmel\BLHeli-master\Output\Eep
xcopy /Y /F Output\Eep\*.EEP "..\..\Atmel\BLHeli-master\Eeprom files"
