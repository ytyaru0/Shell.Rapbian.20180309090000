dir=/tmp/work/
if [ ! -d $dir ]; then
    #now=`date "+%Y%m%d%H%M%S"`
    #mkdir /tmp/work.${now}/
    mkdir "$dir"
    target=/home/pi/root/script/py/GitHub.Uploader.Pi3.Https.201802210700
    cp -r "$target" "$dir"
fi
