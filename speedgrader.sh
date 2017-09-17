# Expected Arguments:
# $1 = zipfile
# $2 = From
# $3 = To

echo "Setting up enviroment"
rm -rf Innlevering

echo "Copying file and unzipping"
cp /home/raknoel/Nedlastinger/$1 ./Innlev.zip
7z x ./Innlev.zip >> ./logs/7zip.logg

echo "Unzipping all archives"
for file in $(find [$2-$3]??????*.zip) ; do	
	7z e -oInnlevering/$(echo "$file" | cut -d'_' -f 1) $file >> ./logs/7zip.logg
done

echo "Cleaning up"
rm -rf ./Innlev.zip
rm -f ./*.zip
