#  stage3



function random_text{
    return -join ((65..90) + (97..122) | Get-Random -count 5 | % {
        [char]$_})
    }

#variables
$wd = random_text
$path= "$env:temp/$wd"
$initial_dir= Get-Location

#goto temp, make working directory

mkdir $path
cd $path
echo "" > poc.txt

# self delete
cd $initial_dir
del installer.ps1