$folders = Get-ChildItem -Path 'D:\Audio\Loops and Samples\samples and presets\Soundtrackloops.com' -Name
//Rename-Item -Path C:\Vignesh\Test\Test1 -NewName Test9

foreach($folder in $folders)
{
    $f = $folder

    $f = $f -replace "_", " "
   
    $f = $f -replace "WAV", ""
    $f = $f -replace "Soundtrack Loops ", ""
    Write-Host "Replacinging " $folder "with " $f

    Rename-Item -Path $folder -NewName $f
}
