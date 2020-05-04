max=`cat instructores.txt | wc -l`
x=0
y=0
i=1

while [ $i -le $max ]; do
	actual=`awk '{print $4}' instructores.txt | head -$i | tail -1`
	if [ $actual = $1 ]; then
		x=`expr $x + 1`
	fi
	if [ $actual = $2 ]; then
		y=`expr $y + 1`
	fi
	i=`expr $i + 1`
done

if [ $x -gt $y ]; then
	echo "$1 tiene mas instructores"
fi
if [ $y -gt $x ]; then
	echo "$2 tiene mas instructores"
else
	echo "$1 y $2 tienen la misma cantidad de instructores"
fi
