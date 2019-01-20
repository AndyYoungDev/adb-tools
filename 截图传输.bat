@echo off
rem 防止文件被覆盖，以时间命名文件，手机截图后传输到电脑指定文件夹
adb shell screencap -p /sdcard/screen.png
set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
set hhmiss=%time:~0,2%%time:~3,2%%time:~6,2%
set "filename=%YYYYmmdd%_%hhmiss%.png"
echo %filename%
adb pull /sdcard/screen.png f:/screen/%filename%
pause 