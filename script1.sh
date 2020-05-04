read -p "Introduce la direccion del directorio " y
x=`ls -l $y|wc -l`
echo "En este directorio hay $x ficheros y directorios"
