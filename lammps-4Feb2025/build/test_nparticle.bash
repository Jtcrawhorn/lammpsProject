#!/bin/bash

echo -e "Starting the serial nparticle 2D tests.\n"
R_VALUES=(4 8 12 16 20)
for r in "${R_VALUES[@]}";
do 
    echo -e "Test nparticle body style with replication factor r=${r}"
    sed -e "s/^variable *xrep *index .*/variable xrep index ${r}/" -e "s/^variable *yrep *index .*/variable yrep index ${r}/" test_nparticle2.in > nparticle_input_r.in
    salloc -Q -n 1 mpirun ./lmp -in nparticle_input_r.in
    echo -e "\n---------------------------\n"

done


# echo -e "Starting the parallelized nparticle body tests.\n"
# THREADS=(2 4 8 16 32)
# R_VALUES=(16 24 32 40)
# for r in "${R_VALUES[@]}"; do 
#     for t in "${THREADS[@]}"; do
#         echo -e "Test nparticle body style with replication factor r=${r} and $t MPI threads"
#         sed -e "s/^variable *xrep *index .*/variable xrep index ${r}/" -e "s/^variable *yrep *index .*/variable yrep index ${r}/" test_nparticle2.in > nparticle_input_r.in
#         salloc -Q -n $t mpirun ./lmp -in nparticle_input_r.in
#         echo -e "\n---------------------------\n"
#     done
# done