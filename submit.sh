#!/bin/sh

# for explanation of these parameters, see
# https://www.ichec.ie/academic/national-hpc/kay-documentation/slurm-workload-manager
# and other docs on ichec.ie

# These SBATCH commands should be commented out as below - don't uncomment them.

#SBATCH --time=0:10:00
#SBATCH --nodes=1
#SBATCH -A ngcom023c # nuig02 is NUI Galway condominium access; a Class-C project would have a different value here
#SBATCH -p DevQ
#SBATCH --mail-user=H.BengaluruRaghuram1@nuigalway.ie
#SBATCH --mail-type=BEGIN,END

module load taskfarm
module load conda/2
source activate myenv # we have to have created a conda environment with this name: see docs
python --version > python_version.txt

cd $SLURM_SUBMIT_DIR
taskfarm taskfarm.sh # we have to supply the file taskfarm.sh: see docs
