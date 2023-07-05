$myHashTable=@{
    1='a key'
    2='another key'
    3='key again'
    4='still a key'
    5=5
}

#basic hashtable manipulation
$myHashTable.GetType()
#see if key/value is present
$myHashTable.ContainsKey(1)
$myHashTable.ContainsValue('keys')
#add key/value 
$myHashTable.Add(6, 'final key')
$myHashTable.Add(9, 'just kiddin')
$myHashTable.Add(10, 'yet more')
$myHashTable[7]=777
$myHashTable.8='hidden key'

$myHashTable.Remove(3)

$myHashTable

#basic customobject manipulation
$employee1=New-Object -TypeName PSCustomObject
$employee2=New-Object -TypeName pscustomobject

$employee2.GetType()

Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'EmployeeID' -Value '1001'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'FirstName' -Value 'John'
Add-Member -InputObject $employee1 -MemberType NoteProperty -Name 'Title' -Value 'Lord'
Get-Member -InputObject $employee1 | Format-Table

Add-Member -InputObject $employee2 -MemberType NoteProperty -Name 'EmployeeID' -Value '1002'
Add-Member -InputObject $employee2 -MemberType NoteProperty -Name 'FirstName' -Value 'Kate'
Add-Member -InputObject $employee2 -MemberType NoteProperty -Name 'Title' -Value 'Lady'
Get-Member -InputObject $employee2 | Format-Table

$employee1
$employee2

$employee1.Title
$employee2.FirstName

$employee3=[PSCustomObject]@{
    EmployeeID='1002'
    FirstName='James'
    Title='Peasant'
}

$employee3