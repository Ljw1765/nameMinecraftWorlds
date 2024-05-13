Bash script intended to rename folders in the minecraftWorlds directory.

World directories parocessed by this script will be renamed as "[levelname.txt contents] ([original randomized folder name])/"

# How to use

Place script directly in a directory containing Minecraft Bedrock worlds. This is usually the minecraftWorlds directory.

If on Linux, execute script with **./nameMinecraftWorlds.sh**

If on Windows, open a WSL terminal in the directory where the script is located, and then execute script with **./nameMinecraftWorlds.sh**

# Notes

Script can be executed multiple times. Folders that were already processed by this script will not be renamed again.

If a world is missing a levelname.txt for some reason, the placeholder text "no-name-" will be used for naming the folder instead.

Script has been tested several times, but it is nonetheless recommended to backup world files prior to executing. Just in case :)
