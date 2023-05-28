echo
echo "I.- Preparar el servidor para el trabajo:"
echo
echo "1.- Instalando las herramientas..."
echo

# 1.1.- Sra Tool Kit <- Descargar las secuencias
tar -xvf ./Tools/sratoolkit.3.0.0-ubuntu64.tar.gz 
export SRA=$PWD/sratoolkit.3.0.0-ubuntu64
export SRABIN=$PWD/sratoolkit.3.0.0-ubuntu64/bin

# 1.2.- FastQC <- Calidad de la secuencia
unzip ./Tools/fastqc_v0.11.9.zip
export FAST=$PWD/FastQC
chmod 755 $PWD/FastQC/fastqc

# 1.3.- FastX <- Calidad de la secuencia
tar -xvf ./Tools/fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2
export FASTX=$PWD/FastX/bin

# 1.4.- MultiQC <- Calidad de la secuencia / analiza los registros de FastQC y brinda un resumen de los mismos
unzip ./Tools/MultiQC.zip
export MULTIQC=$PWD/MultiQC-master

# 1.5.- Blast <- Alineamiento de secuencias
tar -xvf ./Tools/ncbi-blast-2.13.0+-x64-arm-linux.tar.gz
export BLAST=$PWD/ncbi-blast-2.13.0+/bin

# 1.6.- SPAdes <- Alineamiento de secuencias
tar -xvf ./Tools/SPAdes-3.15.4-Linux.tar.gz
export SPADES=$PWD/SPAdes-3.15.4-Linux
export SPADESBIN=$PWD/SPAdes-3.15.4-Linux/bin

# 1.7.- Minimap <- Alineamiento de secuencias
tar -xvf minimap2-2.24_x64-linux.tar.bz2
export MINIMAP=$PWD/minimap2-2.24_x64-linux

# 1.8.- Blast2GO <- Anotación funcional
unzip ./Tools/Blast2GO_unix_6_0_3.zip
export BLAST2GO=$PWD/Blast2GO_unix_6_0_3

# 1.9.- Blast2GO <- Anotación genómica
tar -xvf ./Tools/prokka-1.12.tar.gz
export PROKKA=$PWD/prokka-1.12
export PROKKABIN=$PWD/prokka-1.12/bin

## 1.10.- FastQ-pair <- Vuelve a escribir los archivos fastq emparejados para asegurarse de que todas las lecturas tengan un compañero
# wget https://github.com/linsalrob/fastq-pair/archive/refs/heads/master.zip
# unzip master.zip
# cd fastq-pair-master
# mkdir build && cd build

echo
echo "2.- Preparando las bases de datos..."
echo 

export DATA=$PWD/data
export DB=$PWD/DB

if [ -d "$DATA" ]
then
	echo
else
	mkdir data
fi

cd data
vdb-config --prefetch-to-cwd
vdb-config --interactive	# Seleccionar la primera opción
prokka --setupdb
prokka --listdb

echo
echo "3.- Configurando el servidor..."
echo 

export PATH=$PATH:$DATA:$DB:$SRA:$SRABIN:$FAST:$FASTX:$MULTIQC:$BLAST:$SPADES:$SPADESBIN:$MINIMAP:$BLAST2GO:$PROKKA
echo "PATH=${PATH}" >> ~/.profile
echo $PATH
echo
echo "    Configuración del servidor completado exitosamente!"
echo 
read -s -n1 -p "Presione una tecla para continuar..." keypress
clear
