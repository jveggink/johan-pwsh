for ($i=0; $i -lt 10;$i++){
    Write-Output $i
}

$testArray=@('Steve','John','Tim')

for($i=0; $i -lt $testArray.Length; $i++){
    $testArray[$i]+=' Doe'
}

$testArray

while ((get-date).Minute -eq 40) {
    Get-Date
}

while($true){
    Write-Output "Welcome to the parrot app"
    Write-Output "Enter 'q' to quit"

    $input=Read-Host -Prompt "Enter your response"
    if ($input -eq 'q'){
        break
    }
    Write-Output "You entered: $input"
}

#############################

Write-Output "Welcome to the parrot app"
Write-Output "Enter 'q' to quit"

$input=Read-Host -Prompt "Enter your response"
while($input -ne 'q'){
    Write-Output "You entered: $input"
    $input=Read-Host -Prompt "Please enter a phrase"
}

#############################

Write-Output "Welcome to the parrot app"
Write-Output "Enter 'q' to quit"

do{
    $input=Read-Host -Prompt "Please enter a phrase"
    if($input -ne 'q'){
        Write-Output "You entered $input"
    }
}while($input -ne 'q')

##############################

Write-Output "Welcome to the parrot app"
Write-Output "Enter 'q' to quit"

do{
    $input=Read-Host -Prompt "Please enter a phrase"
    if($input -ne 'q'){
        Write-Output "You entered $input"
    }
}until ($input -eq 'q')
