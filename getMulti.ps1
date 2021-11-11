$urls = Get-Content -Path .\urls.txt
#$urls = $urls.Split([Environment]::NewLine)
$i=$urls.length
[array]::Reverse($urls)
foreach ($url in $urls )
{
  if($url.Trim())
  {
	  $useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0"
	  $quality="bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio"
	  
	  #youtube-dl --user-agent "%user-agent%" -f %quality% --get-id -i PLTs20Q-BTEMNaj4UgOcQfSBsMvIH8bjuX
	  $run = "/c title $i $url | D:\muz\bin\youtube-dl --user-agent `"$useragent`" -f $quality -i $url"
	  write-host $run
	  
	  #start cmd.exe /c "pause"
	  #-WorkingDirectory "D:\muz\bin"
	  Start-Process -FilePath "$env:comspec" -ArgumentList $run
	  $i -= 1
	  #break
  }
}