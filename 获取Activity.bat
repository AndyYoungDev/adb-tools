@echo off
adb shell dumpsys activity activities | findstr mFocusedActivity
pause