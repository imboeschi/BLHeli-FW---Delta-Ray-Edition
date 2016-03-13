@ECHO off
@ECHO ***** Copying files           *****
Break ON
copy /Y /V Output\Hex\*.Hex ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
copy /Y /V Output\Eep\*.EEP ..\..\BLHeliSuite14401\BLHeli_HexFiles\Atmel
