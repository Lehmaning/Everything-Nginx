sdcard=/storage/emulated/0
cd $sdcard
echo "$(pm -l)" > $sdcard/packageList.sh
sed -i "s/package:/pm enable --user 0 /g" $sdcard/packageList.sh
sh $sdcard/packageList.sh
