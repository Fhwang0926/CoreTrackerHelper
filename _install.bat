echo off
SET location=%~dp0
echo start install script
echo location : %location:~0,-1%
rem sc delete CoreTrackerHelper
sc create CoreTrackerHelper binPath="%location%CoreTrackerHelper.exe" start=auto DisplayName="CoreTracker Refresh Helper"
sc description CoreTrackerHelper "Trayicon area refresh program"
net start CoreTrackerHelper
