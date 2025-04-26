# Why 
i have a small main drive and moved all games to a secondary. Sadly r2modman wants to store all the files in appdata so i created this small script to change this.

# Usage
just put the bat file "change_storage_to_here.bat" in the location where you want to move the r2modman game files 
run the script "change_storage_to_here.bat" as administrator because else it cant create the symbolik link

# Undo
if you dont want the storage location to be on the secondary drive either:
put the "change_storage_back_to_appdata.bat" in the location where you placed the original bat file and run it as administrator. This will transfer all files back to appdata.
or
if you dont care for the installed mods just delete the symlink in %appdata% (r2modmanPlus-local has a different symbol than the normal folders)
