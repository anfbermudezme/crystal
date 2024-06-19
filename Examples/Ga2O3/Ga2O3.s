#!/bin/sh
#BATCH -J Ga2O3
#SBATCH -p short
#SBATCH --mem=47Gb
#SBATCH -t 01-00:00:00
#SBATCH -n 48
#SBATCH -e Ga2O3.err
source $HOME/.cry17.bashrc
module load openmpi3
cp Ga2O3.d12 INPUT
runmpi17 48 Ga2O3
