function Get-Fibonacci {
    [CmdletBinding()]
    [Alias('fibonacci','fib')]
    param(
        [int]$n
    )
    if ($n -lt 2) {
        $n
    } else {
        (Get-Fibonacci ($n - 1)) + (Get-Fibonacci ($n - 2))
    }
}
