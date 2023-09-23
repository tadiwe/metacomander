# metacomander
## BASH Script to update metainfo for BUTT (Broadcast using this Tool)
### General
if you are using B.U.T.T. for Broadcasting your Live Set coming from an external audio source, you can predefine your playlist and while playing your set just sent the Meta info to the Radioserver. If you are a Vinyl DJ (playing real vinyl) or Using old CD player playing Audio CDs (no MP3 CD), you can predefine your set and easily sent the current playing song to the radio server. Most Radio Stations require that always the current song is sent out due to legal policies.

### How it works
The Tool reads the playlist.in file, generate a bash menu. You can choose the wanted song meta info with the up and down arrow key. The left and right arrow keys will switch between the command buttons on the bottom of the screen. Enter will issue the current selected button. On default it will sent the list entry, but you can also sent the Showname of your show configured at startup or cancel out of the script. Once a meta info is sent, the tool just only updates the metaout.txt file.

### Installation
Download the 3 files to a directory of your choice. Add the execute flag for the metacommander.sh script.
Configure B.U.T.T. that IT checks for changes in the metaout.txt File.
This Script works in MacOS or Linux out of the Box, because the come with a Bash. Windows User need to Install a Bash Shell. This Script requires the Program "dialog". Use your packagemanager to install it. 
Example in Ubuntu: 
   sudo apt install dialog




