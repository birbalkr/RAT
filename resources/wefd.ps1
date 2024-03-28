# defender disable code
try{
    Get-Service WinDefend | Stop-Service -Force Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\services\WinDefend" -Name "Start" -Value 4 -Type DWORD -Force
    }catch{
        Write-Warning "Failed to disable WinDefend Service"
    }
try{
    New-Item -Path 'HKLM'
}