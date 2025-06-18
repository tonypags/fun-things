function awake {
  Import-Module PsWinAdmin -Function Use-ConsoleBeep, send-string -Force
  Get-Date -ov d
  $d.AddHours(1)
  while ($true) {
    Use-ConsoleBeep -Frequency 216 -Length 450
    send-string -String ' ' -InitialDelay 0 -IntervalDelay 300
  }

}
