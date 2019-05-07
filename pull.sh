for f in $(ls)
do
	if test -d $f & test -e $f/.git
	then
		cd $f
		echo $f
		git pull
		cd ..
	fi
done
