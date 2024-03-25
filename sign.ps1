## Signs a file
[cmdletbinding()]
param(
    [Parameter(Mandatory=$true)]
    [string] $File
)
$cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert | Select-Object -First 1
Set-AuthenticodeSignature -FilePath $File -Certificate $cert
# SIG # Begin signature block
# MIIFrAYJKoZIhvcNAQcCoIIFnTCCBZkCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUzSB0tqS+toDN53XYjO7tp6Is
# uW+gggMyMIIDLjCCAhagAwIBAgIQFVqhe1NkpItHxflkIAsofDANBgkqhkiG9w0B
# AQ0FADAvMS0wKwYDVQQDDCRBUkFUTkVSIFBvd2VyU2hlbGwgQ29kZSBTaWduaW5n
# IENlcnQwHhcNMjQwMzIwMTg0NTMxWhcNNDQwMzIwMTg1NTMxWjAvMS0wKwYDVQQD
# DCRBUkFUTkVSIFBvd2VyU2hlbGwgQ29kZSBTaWduaW5nIENlcnQwggEiMA0GCSqG
# SIb3DQEBAQUAA4IBDwAwggEKAoIBAQC9XIza+6Jh6u3H6/WPlrmV9ZqEpuHRvkVS
# xNuSaDUGxad5b5+p3ZZDzoMJXgrLoBxaywDPdhCxPhAGJZ8D6UGXsnQVmlT/I/VZ
# SJZuO9Uql5EwMqGvtpEezVlG9IhZELKmniK4AawL7u2rW0FXPzviZdMIWAfdKVVW
# 7A5JmMkzEEfhjZI5TufbnowvFNFwJznHhBcWUMx27D7zsKJrWBlUe+nCPhMj71+P
# MMnBIOB0zl1CGT+rhlVdhRoTNO/bB5W7Z2WQ+82lM+DwgW/u9y5usxZ5AzIAjKhx
# KoBbnxIzrgB5NT+UzRJUj5P0t1onQmQ87/FsYM7oZ2FVhgvS4OUpAgMBAAGjRjBE
# MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQU
# rxshP7adLWNu2qFjT9PMwH6OkVMwDQYJKoZIhvcNAQENBQADggEBAHIzmxyV8PLE
# iGfQkQ96/e4aQ/c39xQRRoKKJA0O65HrgrHZ2TxjlcMlYHiUSGoi6hgCTknHm3U4
# 055nvqCgZX0UsygNJ1V3IXv90njBF6qJc4NnhAuzvyuD40XUvV9/qqGaemYjEGU+
# czWT22WiBhQ0h4wCVbmOO8McbrHnQWBZVuf4fAVwNc7cZ26h42bh+6oe90/7Aq4S
# DRhSCxc580ABV5T1bkSgNSQ5cx0E/olsXWAutAoW6qqB0hIuj/XsFus8ZPuFKmVX
# f/ZCCuqHNXPBibillth5JbGvdnhbWqjzk3G4y4eLWXeAszpUTqrGDKlIp6UMNhXr
# HbIaSzGKGmsxggHkMIIB4AIBATBDMC8xLTArBgNVBAMMJEFSQVRORVIgUG93ZXJT
# aGVsbCBDb2RlIFNpZ25pbmcgQ2VydAIQFVqhe1NkpItHxflkIAsofDAJBgUrDgMC
# GgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYK
# KwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG
# 9w0BCQQxFgQUg5MveCLRYLjPnaRLg2DaW9i5y9EwDQYJKoZIhvcNAQEBBQAEggEA
# XLaNbtGbfIJrLMmaL7P4q/aec6ksGDVBz4iMt13J+/+TkmTrHBi42mK82cbBDzFy
# vADNLqRTeZzJaUH1VlABxdou3wuNEiD1ZzlhMHwOr6DdiEqgUdy2WxXNOZubvM8h
# NprRvHbGHVGO4ng+3XKFbeKIZ1WHGmQAcTLdXID2kWrjkI4UXMuqM09+NygUV6+5
# LZVO+bJWl4BCajFq3Y5GMeQKPTycGf4AkH4QWdqB9py0v6jakWNu39u8lBMEnlSr
# jQd1kTxt6yunJZSjhveKygQuT8e8/0Z49Y/6yEgul8WbQZAXgPTbvKY5ZIi/1Rh6
# kHcwjM9/gFD2NG/2EiJ/pQ==
# SIG # End signature block
