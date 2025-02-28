#!/bin/bash
#PBS -q romeq
#PBS -N mWater
#PBS -l walltime=96:00:00
#PBS -l select=1:ncpus=10

# cd $PBS_O_WORKDIR
pwd

# Choose how many times you want to replicate the initial box
rep=1
pressure=1.0
temperature=300.0



mpirun -np 10 ~/mylammps/src/lmp_mpi -in in.equil.mw.lmp -v P $pressure -v T $temperature -v rep $rep