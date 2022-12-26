#!/bin/bash

#APARTADO A)
echo APARTADO A
echo En ibsen:
echo
hostname
echo
echo En singularity:
singularity exec ./my-python.sif hostname
echo
#APARTADO B)
echo APARTADO B
echo En ibsen:
cat /etc/os-release
echo
echo En singularity:
singularity exec ./my-python.sif cat /etc/os-release
echo
#APARTADO C)
echo APARTADO C
echo En ibsen:
pwd
echo
echo En singularity.
singularity exec ./my-python.sif pwd
echo
#APARTADO D)
echo APARTADO D
echo En ibsen:
ls -l /home
echo
echo En singularity:
singularity exec ./my-python.sif ls -l /home
echo
#APARTADO E)
echo APARTADO E
echo En ibsen:
python --version
echo
echo En singularity:
singularity exec ./my-python.sif python --version
echo
#APARTADO F)
echo APARTADO F
echo Ejecutando el programa del directorio source:
ipython ./source/kmer-solution.ipynb
echo
echo Ejecutando el programa dentro de la imagen de singularity:
singularity exec ./my-python.sif ipython /home/kmer-solution.ipynb

