@echo off
adb shell uiautomator dump /sdcard/ui.xml
adb pull /sdcard/ui.xml f:/ui.xml
pause