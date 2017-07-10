#!/bin/bash
# TODO Generalize
export PYTHONHOME=~/anaconda3:/home/jgomez/anaconda3/envs/TPIR
export PYTHONPATH=$PYTHONPATH:~/anaconda3/envs/TPIR:~/ibm/quantum/qiskit-sdk-py-dev-Dev
#export PYTHONPATH=~/anaconda3:~/anaconda3/lib:~/anaconda3/lib/python3.6/site-packages/IBMQuantumExperience:$PYTHONPATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/anaconda3/lib

# TODO Differentiate between Debug and Release runs
export RUST_BACKTRACE=1
export RUST_LOG=unitary_simulator=debug

cargo test circuit1 -- --nocapture
