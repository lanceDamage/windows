$hns1 = get-content path
foreach ($line in $hns1) {    
    if ($line -like "*xx*") {   
[System.Net.Dns]::GetHostAddresses($line)[0].IPAddressToString | out-file "hnsip.txt" -Append    
    }
}
