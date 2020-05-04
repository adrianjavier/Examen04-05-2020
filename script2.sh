read -p "Introduce el nombre de la primera ciudad " ciu1
read -p "Introduce el nombre de la segunda ciudad " ciu2

max=`cat instructores.txt | wc -l`
x=0
y=0
i=1

while [ $i -le $max ]; do
	actual=`awk '{print $4}' instructores.txt | head -$i | tail -1`
	if [ $actual = $ciu1 ]; then
		x=`expr $x + 1`
	fi
	if [ $actual = $ciu2 ]; then
		y=`expr $y + 1`
	fi
	i=`expr $i + 1`
done

if [ $x -gt $y ]; then
	echo "$ciu1 tiene mas instructores"
fi
if [ $y -gt $x ]; then
	echo "$ciu2 tiene mas instructores"
fi
if [ $x = $y ];then
	echo "$ciu1 y $ciu2 tienen la misma cantidad de instructores"
fi
