

_cloneOrPull https://github.com/A9T9/Kantu src-kantu

#prepare macros
outFile=$uData/src-kantu/src/config/preinstall_macros.js
echo "export default {" > $outFile
con=""
for filename in $i3cSecretsDir/.secrets/kantu/*.json; do
	bName=$(basename "$filename" .json)
	echo $con"\""$bName"\":" >> $outFile
	cat $filename >> $outFile
	con=","
done
echo "}" >> $outFile

cd $uData/src-kantu
npm i
npm install cross-env
#npm rebuild node-sass --force
npm install react-click-outside
npm run build
npm run build-ff


doCommand=false;