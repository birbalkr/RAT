#  stage3



function random_text{
    return -join ((65..90) + (97..122) | Get-Random -count 5 | % {
        [char]$_})
    }

#variables
$wd = random_text
$path= "$env:temp/$wd"
$initial_dir= %cd%

#goto temp, make working directory

mkdir $path
cd $path
echo "" > poc.txt
cd $initial_dir

#  delete self
del installer.ps1