rem goto 2

:1
set user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0
set dl_path=D:\youtube-dl\bin
set path=%path%;%dl_path%
@set quality=bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio

if not exist %dl_path%\youtube-dl.exe goto error

youtube-dl --user-agent "%user-agent%" -f %quality% --get-id -i THERE_EDIT_THIS > urls.txt
pause

:2
powershell.exe -ExecutionPolicy Bypass -file "%~n0.ps1"

pause
exit

:error
echo dl_path ???
echo THERE_EDIT_THIS ???
echo please config me
pause