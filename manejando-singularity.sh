#!/bin/bash

### CARGAMOS LOS MODULOS ###

module load singularity/3.8.0
module load anaconda/2020.11

echo "====================================================="
echo
echo "a) El comando hostname en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "#Comando hostname en ibsen"
echo
hostname
echo
echo "#Comando hostname en el contenedor"
echo
singularity run my-python.sif hostname
echo
echo "====================================================="
echo
echo "b) El comando cat /etc/os-release en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "#Comando cat /etc/os-release en ibsen"
echo
cat /etc/os-release
echo
echo "#Comando cat /etc/os-release en my-python.sif"
echo
singularity run my-python.sif cat /etc/os-release
echo
echo "====================================================="
echo
echo "c) El comando pwd en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "#Comando pwd en ibsen"
echo
pwd
echo
echo "#Comando pwd en el contenedor my-python.sif"
echo
singularity run my-python.sif pwd
echo
echo "====================================================="
echo
echo "d) El comando ls -l /home en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "#Comando ls -l /home en ibsen"
echo
ls -l /home
echo
echo "#Comando ls -l /home en el contenedor my-python.sif"
echo
singularity run my-python.sif ls -l /home
echo
echo "====================================================="
echo
echo "e) El comando python –version en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "#El comando python –version en ibsen"
echo
python --version
echo
echo "#El comando python -version en el contenedor"
echo
singularity run my-python.sif python --version
echo "====================================================="
echo
echo "f) El notebook kmer-solution.ipynb que tienes en el subdirectorio source dentro de la imagen de Singularity, y el notebook kmer-solution.ipynb que tienes en el propio contenedor my-python.sif de Singularity"
echo
echo "#El notebook kmer-solution.ipynb en el directorio source"
echo
ipython lab7-singularity/source/kmer-solution.ipynb
echo
echo "#el notebook kmer-solution que se encuentra en la imagen my-python.sif"
echo
singularity exec my-python.sif ipython /home/kmer-solution.ipynb


### DESCARGAMOS LOS MODULOS

module unload singularity/3.8.0
module unload anaconda/2020.11

