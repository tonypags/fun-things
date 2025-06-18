$TranscriptPath = Join-Path $PSScriptRoot 'Transcripts'
if (Test-Path $TranscriptPath) {} else {
    New-Item $TranscriptPath -ItemType Directory -Force
}
Start-Sleep -Milliseconds (Get-Random -Min 5 -Max 50)
$Now = Get-Date
$strDateFormat = 'yyyyMMdd_HHmmss.fff'

$FileName = "PS-Transcript_$($Now.ToString($strDateFormat)).txt"
$TargetFile = Join-Path $TranscriptPath $FileName
Start-Transcript -Path $TargetFile -Force

Get-Variable 'Now','strDateFormat','FileName','TargetFile' | Remove-Variable
