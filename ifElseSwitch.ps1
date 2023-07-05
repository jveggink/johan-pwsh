#example operators in powershell
1 -eq 1
1 -lt 2
1 -le 2
1 -gt 2
3 -ge 2

#create arrays and check if value is in
@(1,2,3) -contains 4
@('test', 'TeSt') -contains 'TEST'
@('test', 'TeSt') -ccontains 'TEST'

#create var for filepath and check
$filepath="C:\Users\JohanE\johan-pwsh\repos\johan-pwsh\mylog.txt"
Test-Path -Path $filepath

#ifelse block to evaluate filepath exists/filepath values
#only the first in the block that evaluates to true will run
if(Test-Path -Path $filepath){
    $data=Get-Content -Path $filepath
    if($data.count -le 3){
        Write-Output 'This file has 3 lines or less'
    }elseif ($data.Count -le 5) {
        Write-Output 'This file has 4 or 5 lines'
    }else {
        Write-Output 'This file has more than 5 lines'
    }
    Write-Output 'File has been verified'
}else {
    Write-Output "File `"$filepath`" does not exist"
}

#switch block to check values
#break used to get the outcome you want, without break the block runs until the end regardless of a true evaluation

switch($data.Count){
    {$_ -lt 2}{
        Write-Output 'This file has 3 lines or less'
        break
    }
    {$_ -le 5}{
        Write-Output 'This file has 4 or 5 lines'
        break
    }
    {$_ -gt 5}{
        Write-Output 'This file has more than 5 lines'
        break
    }
    {$_ -lt 100}{
        Write-Output 'This file has up to 100 lines'
        break
    }
}
