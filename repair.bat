@echo off
echo Starting System File Checker, You will see some prompts appearing...
sfc /scannow

echo Check 1/4 complete. Starting DISM to Check System Health...
dism /Online /Cleanup-Image /CheckHealth


echo Check 2/4 complete. Starting DISM to Scan System Image...
dism /Online /Cleanup-Image /ScanHealth


echo Check 3/4 complete. Starting final DISM to Restore System Health...
dism /Online /Cleanup-Image /RestoreHealth


echo 4/4 All Tasks Complete! To close:
pause
