@echo off
dir /od *.mp4 /B > temptxt

for /f %%a in (temptxt) do (
 
  rem o—Í
  echo file '%%a' >>filelist.txt
 
)

ffmpeg -f concat -i filelist.txt -c copy output.mp4
pause