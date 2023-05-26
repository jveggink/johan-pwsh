$MyArray = @("Test", "One")

$MyList = New-Object -TypeName System.Collections.ArrayList

[void]$MyList.Add("First")
[void]$MyList.AddRange(@("Cat", "Dog", "Marcel"))
$MyList

Measure-Command -Expression {@(0..1000).ForEach({$MyArray+=$_})}

Measure-Command -Expression {@(0..1000).ForEach({$MyList.Add($_)})}

Measure-Command -Expression {$MyList.AddRange(@(0..1000))}