$filepath="C:\Users\JohanE\johan-pwsh\repos\johan-pwsh\FolderNames.txt"
$foldersPath="C:\Users\JohanE\johan-pwsh\repos\johan-pwsh\Share"

$folderNames=Get-Content -Path $filepath
$folderNames[0]

foreach($name in $folderNames){
    if((Test-Path -Path "$foldersPath\$name") -eq $false){
        New-Item -Path $foldersPath -Name $name -ItemType Directory
    }else{
        Write-Output "Folder exists already"
    }
}

$folderNames | ForEach-Object -Process {
    Write-Output $_
}

$folderNames | ForEach-Object -Process {
    if((Test-Path -Path "$foldersPath\$_") -eq $false){
        New-Item -Path $foldersPath -Name $_ -ItemType Directory
    }else{
        Write-Output "Folder exists already"
    }
}

$folderNames.ForEach(
    {
        if((Test-Path -Path "$foldersPath\$_") -eq $false){
            New-Item -Path $foldersPath -Name $_ -ItemType Directory
        }else{
            Write-Output "Folder exists already"
        }
    }
)

