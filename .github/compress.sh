apt-get install -y zip
cd packages/artifact
for file in $(ls); do
    name=${file%%.*}
    if [${file##*.} == "exe"]
    then
        zip $name.zip $file
    else
        tar -czvf $name.tar.gz $file
    fi
done