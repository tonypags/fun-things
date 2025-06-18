ipmo pswinadmin, psdatetools
# [CmdletBinding()]

$EndTime = Get-Date
# Past week
$StartTime = $EndTime.AddDays(-18)
# This week
#$StartTime = $EndTime | Find-Weekday -DayOfWeek Monday -Backwards | Get-TruncatedDate -Truncate Hour
#$StartTime = $EndTime.AddDays(-8)

$FilterHashtable = @{
	logname='System'
	StartTime=$StartTime
	EndTime=$EndTime
}
$lastWeek = Get-WinEvent -FilterHashtable $FilterHashtable -ea 0

# Find the first and last event of the day
$grouped = $lastWeek | #where {$_.TimeCreated.DayOfWeek -notlike 'S*day'} | 
Group @{e={$_.TimeCreated.Day}} | Sort @{e={$_.Group.TimeCreated[0]}}
foreach ($day in $grouped) {
	#Write-Debug "`$day" -debug
    $dayList    = $day.Group | Sort TimeCreated
	$firstItem  = $dayList | where {$_.TimeCreated.Hour -ge 5 } | select -First 1
	$LastItem   = $dayList | where {$_.TimeCreated.Hour -ge 11} | select -Last  1
	$BootUps    = $dayList | where {$_.id -eq 12   -and $_.TimeCreated.Hour -ge 5 }
	$PowerDowns = $dayList | where {$_.id -eq 1074 -and $_.TimeCreated.Hour -ge 11}
	$diff       = $LastItem.TimeCreated - $firstItem.TimeCreated

	$Boots = $BootUps.TimeCreated | Get-TruncatedDate -Truncate Second | Select -Unique
	if (@($Boots).Count -gt 1) {
		$lastTime = Get-Date -Hour 5
		$showBoots = @()
		foreach ($time in @($Boots)) {
			if (($time - $lastTime).TotalMinutes -gt 2) {
				$showBoots += $time
			}
		}
	} else {
		$showBoots = @($Boots)
	}
	Write-Verbose "$($boots|out-string)" -verbose

	Write-Host "First: $($firstItem.TimeCreated)"
	$showBoots | foreach { Write-Host " Boot: $_" }
	Write-Host "  Off: $($PowerDowns.TimeCreated)"
	Write-Host " Last: $($LastItem.TimeCreated)"
	Write-Host " Diff: $($diff.TotalHours)"
	Write-Host ""
	
}


	<#

		First: 10/25/2021 09:10:06
		 Boot: 10/25/2021 09:10:00
		  Off: 10/25/2021 16:48:02
		 Last: 10/25/2021 16:48:17

		First: 10/26/2021 09:13:09
		 Boot: 10/26/2021 09:13:00
		  Off: 10/26/2021 18:21:25
		 Last: 10/26/2021 18:21:49

		First: 10/27/2021 09:10:54
???? Should be a boot here (there are 2 in verbose results)
Wednesday, October 27, 2021 9:10:00 AM
Wednesday, October 27, 2021 9:11:00 AM
		  Off: 10/27/2021 17:11:54
		 Last: 10/27/2021 17:12:12

		First: 10/28/2021 09:08:40
??? should be 2 boots here: Thursday, October 28, 2021 9:08:00 AM
??? should be 2 boots here: Thursday, October 28, 2021 8:13:00 PM
		  Off: 10/28/2021 17:48:56
		 Last: 10/28/2021 23:56:14

		First: 10/29/2021 10:23:51
		 Boot: 10/29/2021 10:23:00
		 Boot: 10/29/2021 10:24:00 ?????
		  Off: ????  didn't happen yet
		 Last: ????  didn't happen yet

	#>

