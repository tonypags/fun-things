function Receive-DummyDownload {
    [CmdletBinding()]
    [Alias('fakeDL')]
    param(
        [int64]$Size = 100MB
    )
    #$Uri = "https://httpbin.org/stream-bytes/$($Size)"
    $Uri = "https://httpbin.org/stream/$($Size)"
    $Header = @{accept = 'application/octet-stream'}
    [void] (Invoke-RestMethod -Method GET -Uri $Uri -Header $Header)
}
