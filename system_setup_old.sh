#!/bin/bash

echo "1.- Preparar el sistema para el trabajo:"
echo "    1.1- Descargando las herramientas..."

# Sra Tool Kit <- Descargar las secuencias
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.0.0/sratoolkit.3.0.0-ubuntu64.tar.gz
tar -xvf sratoolkit.3.0.0-ubuntu64.tar.gz

# FastQC <- Calidad de la secuencia
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip
unzip fastqc_v0.11.9.zip

# FastX <- Calidad de la secuencia
wget http://hannonlab.cshl.edu/fastx_toolkit/fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2
tar -xvf fastx_toolkit_0.0.13_binaries_Linux_2.6_amd64.tar.bz2

# MultiQC <- Calidad de la secuencia / analiza los registros de FastQC y brinda un resumen de los mismos
wget https://github.com/ewels/MultiQC/archive/refs/heads/master.zip
unzip MultiQC.zip

# Blast <- Alineamiento de secuencias
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/LATEST/ncbi-blast-2.13.0+-x64-arm-linux.tar.gz
tar -xvf ncbi-blast-2.13.0+-x64-arm-linux.tar.gz

# SPAdes <- Alineamiento de secuencias
wget https://cab.spbu.ru/files/release3.15.4/SPAdes-3.15.4-Linux.tar.gz
tar -xvf SPAdes-3.15.4-Linux.tar.gz

wget https://github.com/linsalrob/fastq-pair/archive/refs/heads/master.zip
unzip master.zip
cd fastq-pair-master
mkdir build && cd build


# Minimap <- Alineamiento de secuencias
wget https://github.com/lh3/minimap2/releases/download/v2.24/minimap2-2.24_x64-linux.tar.bz2
tar -xvf minimap2-2.24_x64-linux.tar.bz2

# Blast2GO <- Anotación funcional
wget https://resources.biobam.com/blast2go/prod/installers/Blast2GO_unix_6_0_3.zip
unzip Blast2GO_unix_6_0_3.zip
./Blast2GO_unix_6_0_3.sh

wget https://vicbioinformatics.com/prokka-1.12.tar.gz
tar -xvf prokka-1.12.tar.gz

echo
echo "    Descarga de herramientas completada exitosamente!"
echo 
echo "    1.2.- Configurando el servidor..."
	
	
# descargar las bases de datos
# wget https://ftp.ncbi.nlm.nih.gov/blast/db/
# tar -xvf 

# ref_prok_rep_genomes-nucl-metadata.json    2022-06-20 15:46  1.7K  
# wget https://ftp.ncbi.nlm.nih.gov/blast/db/ref_prok_rep_genomes.00.tar.gz             2022-06-20 15:44  961M  
# tar -xvf ref_prok_rep_genomes.00.tar.gz
# ref_prok_rep_genomes.00.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.01.tar.gz             2022-06-20 15:44  947M  
# ref_prok_rep_genomes.01.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.02.tar.gz             2022-06-20 15:44  946M  
# ref_prok_rep_genomes.02.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.03.tar.gz             2022-06-20 15:44  948M  
# ref_prok_rep_genomes.03.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.04.tar.gz             2022-06-20 15:44  950M  
# ref_prok_rep_genomes.04.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.05.tar.gz             2022-06-20 15:44  947M  
# ref_prok_rep_genomes.05.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.06.tar.gz             2022-06-20 15:44  946M  
# ref_prok_rep_genomes.06.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.07.tar.gz             2022-06-20 15:44  946M  
# ref_prok_rep_genomes.07.tar.gz.md5         2022-06-20 15:44   65   
# ref_prok_rep_genomes.08.tar.gz             2022-06-20 15:45  938M  
# ref_prok_rep_genomes.08.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.09.tar.gz             2022-06-20 15:45  947M  
# ref_prok_rep_genomes.09.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.10.tar.gz             2022-06-20 15:45  949M  
# ref_prok_rep_genomes.10.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.11.tar.gz             2022-06-20 15:45  949M  
# ref_prok_rep_genomes.11.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.12.tar.gz             2022-06-20 15:45  947M  
# ref_prok_rep_genomes.12.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.13.tar.gz             2022-06-20 15:45  946M  
# ref_prok_rep_genomes.13.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.14.tar.gz             2022-06-20 15:45  947M  
# ref_prok_rep_genomes.14.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.15.tar.gz             2022-06-20 15:45  947M  
# ref_prok_rep_genomes.15.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.16.tar.gz             2022-06-20 15:45  938M  
# ref_prok_rep_genomes.16.tar.gz.md5         2022-06-20 15:45   65   
# ref_prok_rep_genomes.17.tar.gz             2022-06-20 15:46  849M  
# ref_prok_rep_genomes.17.tar.gz.md5         2022-06-20 15:46   65   

# 16S_ribosomal_RNA-nucl-metadata.json       2022-06-18 05:36  467   
# 16S_ribosomal_RNA.tar.gz                   2022-06-18 05:36   37M  
# 16S_ribosomal_RNA.tar.gz.md5               2022-06-18 05:36   59   
# 18S_fungal_sequences-nucl-metadata.json    2022-06-18 05:36  489   
# 18S_fungal_sequences.tar.gz                2022-06-18 05:36   32M  
# 18S_fungal_sequences.tar.gz.md5            2022-06-18 05:36   62   
# 28S_fungal_sequences-nucl-metadata.json    2022-06-18 05:37  489   
# 28S_fungal_sequences.tar.gz                2022-06-18 05:37   33M  
# 28S_fungal_sequences.tar.gz.md5            2022-06-18 05:37   62   
# ITS_RefSeq_Fungi-nucl-metadata.json        2022-06-20 05:36  489   
# ITS_RefSeq_Fungi.tar.gz                    2022-06-20 05:36   34M  
# ITS_RefSeq_Fungi.tar.gz.md5                2022-06-20 05:36   58  

# refseq_rna-nucl-metadata.json              2022-06-17 10:31  967   
# refseq_rna.00.tar.gz                       2022-06-17 10:29  2.7G  
# refseq_rna.00.tar.gz.md5                   2022-06-17 10:29   55   
# refseq_rna.01.tar.gz                       2022-06-17 10:29  2.0G  
# refseq_rna.01.tar.gz.md5                   2022-06-17 10:29   55   
# refseq_rna.02.tar.gz                       2022-06-17 10:29  2.1G  
# refseq_rna.02.tar.gz.md5                   2022-06-17 10:29   55   
# refseq_rna.03.tar.gz                       2022-06-17 10:30  2.3G  
# refseq_rna.03.tar.gz.md5                   2022-06-17 10:30   55   
# refseq_rna.04.tar.gz                       2022-06-17 10:30  2.3G  
# refseq_rna.04.tar.gz.md5                   2022-06-17 10:30   55   
# refseq_rna.05.tar.gz                       2022-06-17 10:30  2.1G  
# refseq_rna.05.tar.gz.md5                   2022-06-17 10:30   55   
# refseq_rna.06.tar.gz                       2022-06-17 10:30  2.1G  
# refseq_rna.06.tar.gz.md5                   2022-06-17 10:30   55   
# refseq_rna.07.tar.gz                       2022-06-17 10:31  2.1G  
# refseq_rna.07.tar.gz.md5                   2022-06-17 10:31   55   
# refseq_rna.08.tar.gz                       2022-06-17 10:31  1.7G  

# echo
# echo "    Descarga de bases de datos completada exitosamente!"
# echo 
# echo "    1.2.- Configurando el servidor..."

	
# Guardar las instalaciones en la carpeta Tools
export TOOLS=$PWD/Tools
if [ -d "$TOOLS" ]
then
	echo
else
	mkdir Tools
fi
mv *.zip Tools
mv *.gz Tools
mv *.bz2 Tools
mv Blast2GO_unix_6_0_3.sh Tools


# which bash
export DATA=$PWD/data
export DB=$PWD/data/bd
export SRA=$PWD/sratoolkit.3.0.0-ubuntu64
export SRABIN=$PWD/sratoolkit.3.0.0-ubuntu64/bin
export FAST=$PWD/FastQC
export FASTX=$PWD/FastX/bin
export MULTIQC=$PWD/MultiQC-master
export BLAST=$PWD/ncbi-blast-2.13.0+/bin
export SPADES=$PWD/SPAdes-3.15.4-Linux
export SPADESBIN=$PWD/SPAdes-3.15.4-Linux/bin
export MINIMAP=$PWD/minimap2-2.24_x64-linux
export BLAST2GO=$PWD/Blast2GO_unix_6_0_3
export PROKKA=$PWD/prokka-1.12
export PROKKABIN=$PWD/prokka-1.12/bin
export PATH=$PATH:$DATA:$DB:$SRA:$SRABIN:$FAST:$FASTX:$MULTIQC:$BLAST:$SPADES:$SPADESBIN:$MINIMAP:$BLAST2GO:$PROKKA
echo "PATH=${PATH}" >> ~/.profile
echo $PATH
chmod 755 $PWD/FastQC/fastqc

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
echo "    Configuración del servidor completado exitosamente!"
echo 
read -s -n1 -p "Presione una tecla para continuar..." keypress
clear
