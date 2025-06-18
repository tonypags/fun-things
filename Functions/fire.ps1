function fire {



$Colors="Yellow","Red","DarkYellow","DarkRed"
$Count = $Colors.Count
while ($true) {
  $f = $Colors[(Get-Random -Minimum 0 -Maximum ($Count))]
  Write-Host "#" -nonewline -f $f -b Black
}



}#END: function disco {}
