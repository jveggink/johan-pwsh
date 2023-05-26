$myHashTable=@{
    1='a key'
    2='another key'
    3='key again'
    4='still a key'
    5=5
}

#basic hashtable manipulation
$myHashTable.GetType()
$myHashTable.ContainsKey(1)
$myHashTable.ContainsValue('keys')
$myHashTable.Add(6, 'final key')
$myHashTable[7]=777
$myHashTable.8='hidden key'

$myHashTable.Remove(3)

$myHashTable

#basic customobject manipulation
$employee1=New-Object -TypeName PSCustomObject

Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'EmployeeID' -Value '1001'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'FirstName' -Value 'John'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'Title' -Value 'Lord'
Get-Member -InputObject $employee1 | Format-Table

$employee1

$employee2=[PSCustomObject]@{
    EmployeeID='1002'
    FirstName='James'
    Title='Peasant'
}

$employee2