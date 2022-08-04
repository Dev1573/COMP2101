Get-CimInstance Win32_NetworkAdapterConfiguration | where { $_.ipenabled -eq $true } | select Ipenabled, Description, Index, IPAddress, Subnetmask, DNSdomain, DNSserverSearchOrder | FT -wrap