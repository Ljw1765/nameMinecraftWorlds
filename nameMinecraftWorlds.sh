# Original script created by JW Banks (@JWolf1765)
# Intended to rename folders in the minecraftWorlds directory.
# Worlds are named as "[levelname.txt contents] ([original folder name])"
# Script must be placed & executed in the minecraftWorlds directory.
# Script can be executed multiple times. Folders that were already processed by this script will not be renamed again.
# Script has been tested several times, but it is nonetheless recommended to backup world files prior to executing. Just in case :)

doneRegexTest=".*=/$"
for dir in */ ; do
    if [[ "${dir}" =~ ${doneRegexTest} ]]
	then
		if [ -f "./${dir}/levelname.txt" ]
		then
			worldName=$(cat "./${dir}/levelname.txt")
		else
			worldName="no-name-"
		fi
		echo ${worldName}
		mv "./${dir}" "./${worldName} (${dir: 0: -1})"
	fi
done