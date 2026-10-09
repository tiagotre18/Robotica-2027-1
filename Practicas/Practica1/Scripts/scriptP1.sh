cd ~
echo "Ruta actual: $(pwd)"
echo ""


# BLOQUE 3: Verificar y crear Practica1 
if [ -d "Practica1" ]; then
    echo "La carpeta Practica1 ya existe."
else
    mkdir Practica1
    echo "Carpeta Practica1 creada."
fi

# BLOQUE 4: Crear subcarpetas y archivos 
mkdir -p Practica1/Letras
touch Practica1/Letras/a.txt
touch Practica1/Letras/b.txt
touch Practica1/Letras/c.txt

mkdir -p Practica1/Integrantes
touch Practica1/Integrantes/DeLaParraTreviñoAldoSantiago.txt
touch Practica1/Integrantes/RubioAvilezJorgeSantiago.txt

echo "Subcarpetas y archivos creados."

# BLOQUE 5: Mostrar estructura 
cd Practica1/
echo "Ruta actual: $(pwd)"
echo "Estructura de Practica1: $(tree)"


RUTA="/home/tiago_tre/Practica1"
# BLOQUE 6: Eliminar Practica1 (con verificación)
if [ "$RUTA" = "/home/tiago_tre/Practica1" ]; then
    rm -rf "$RUTA"
    echo "Carpeta Practica1 eliminada correctamente."
else
    echo "ERROR: La ruta no corresponde a ~/Practica1. No se elimina nada."
fi
