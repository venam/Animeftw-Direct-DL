#Mini Direct Downloader for Animeftw

Sick of waiting to download your anims from animeftw.tv you can use this script to directly download the mkvs.

##Deps
There are 2 versions of the script one for Windows(batch file) and one for unix-like system.<br>

* On windows you'll need cURL.
* On unix-like system you'll need cURL or aria2 (or you can change the script to use whatever external dl manager you like) 

##Usage Example
You can browse the anime list like you normally do on animeftw.<br>
Let's say that for example you want to download from http://www.animeftw.tv/anime/paranoia-agent/ the episode 1

* on unix-like systems:

`./dl.sh paranoia-agent 1`

* on Windows
cURL should be in the PATH or in the same direcory as the batch file.<br>
Open a command prompt in the same directory and type:

`dl.bat paranoia-agent 1`

