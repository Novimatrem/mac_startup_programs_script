# mac_startup_programs_script

Allows you to add startup programs to your Mac OS by putting them into a bash script, rather than having to make a plist for every god damn one. Fuck plists. Fuck XML.


# This is not working fully, a script I ran from inside of this one cannot modify files!

This is caused by a security feature in Mac OS, where depending on your user account, and how you ran the script in the first place, bash's permission to access the files may be silently denied. To fix this, follow this Apple Support article [https://support.apple.com/en-us/101653](https://support.apple.com/en-us/101653) - choosing the file /bin/bash - ensuring it is granted Full Disk Acccess. Show hidden files with Cmd + Shift + .

