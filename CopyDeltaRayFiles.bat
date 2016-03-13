@ECHO off
@ECHO ***** Copying files           *****
Break ON
xcopy /Y /E Atmel\BLHeli-master\* .\BLHeli-master\Atmel
xcopy /Y /E Atmel\BLHeliSuite14401\* .\BLHeliSuite14401\BLHeli_HexFiles\Atmel
cd BLHeli-master\Atmel
CopyHexFiles.bat
@pause
