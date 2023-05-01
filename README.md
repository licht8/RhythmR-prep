## RhythmR - Script for initial preparation of fresh VDS based on CentOS 8 Stream

<div id="header" align="left">
  <img src="https://cdn-icons-png.flaticon.com/512/6938/6938203.png" width="150"/>
</div>


 There are scripts here which help a root-user prepare and start to use
 a newly-created server or server which has been cleaned as well

## Usage:
In order to install this you have to copy&paste following command to your terminal

```
cd ~ ; rm -rf RhythmR-prep ; dnf -y install wget ; wget -O preinstall.sh https://bit.ly/3Vj5xDf ; chmod +x preinstall.sh ; ./preinstall.sh
```

## What does this command do ?
* Goes to ~/ and deletes the RhythmR-prep folder if needed.
* Installs wget, downloads preinstaller and runs.
* Then install.sh does all the work such as: installs basic components for comfortable server administration, disables SELinux, etc.
