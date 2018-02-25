#!/bin/bash
#
#SBATCH --job-name=test
#SBATCH --output=eccv_model1_%j.out
#SBATCH --error=eccv_model1_%j.err
#
#SBATCH --time=00:00:10
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64G
#SBATCH --gres gpu:16
#SBATCH -C gpu_shared

module load GCC/4.9.2-binutils-2.25 
module load OpenMPI/1.8.5
module load Python/3.6.0
module load tensorflow/1.5.0-cp36

source $HOME/.local/venv/bin/activate
python3 -c "import tensorflow as tf; print(tf.__version__)"

$HOME/projects/vfeedbacknet/scripts/check_gpus