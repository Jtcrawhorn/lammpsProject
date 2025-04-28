#!/bin/bash

# echo -e "Starting the serial rounded/polygon square tests.\n"
# R_VALUES=(25 30 40 50)
# for r in "${R_VALUES[@]}";
# do 
#     echo -e "squares test testing rounded/polygon body style with replication factor r=${r}"
#     sed "s/^variable *r *index .*/variable    r     index ${r}/" squares.in > input_r.in
#     salloc -Q -n 1 mpirun ./lmp -in input_r.in | grep "Total wall time"
#     echo -e "\n---------------------------\n"

# done

# echo -e "Starting the parallelized rounded/polygon square tests with MPI.\n"
# THREADS=(2 4 8 16 32)
# R_VALUES=(25 30 40 50)
# for r in "${R_VALUES[@]}"; do 
#     for t in "${THREADS[@]}"; do
#         echo -e "squares test testing rounded/polygon body style with replication factor r=${r} and $t MPI threads"
#         sed "s/^variable *r *index .*/variable    r     index ${r}/" squares.in > input_r.in
#         salloc -Q -n $t mpirun ./lmp -in input_r.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done


# echo -e "Starting the OpenMP parallel test for body style rounded/polygon.\n"
# R_VALUES=(25 30 40 50)
# THREADS=(2 4 8 16 32)
# for threads in "${THREADS[@]}"
# do
#     for r in "${R_VALUES[@]}"
#     do
#         export OMP_NUM_THREADS=$threads
#         echo -e "rounded/polygon test with $atoms atoms and $threads OpenMP threads"
#         sed "s/^variable *r *index .*/variable    r     index ${r}/" squares.in > input_r.in
#         OMP_NUM_THREADS=$threads srun ./lmp -in input_r.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done

# Show Lam this test in the demo to save time. 
echo -e "Starting the parallelized Demo rounded/polygon square tests with MPI.\n"
THREADS=(2 4 8 16 32)
R_VALUES=(15)
for r in "${R_VALUES[@]}"; do 
    for t in "${THREADS[@]}"; do
        echo -e "squares test testing rounded/polygon body style with replication factor r=${r} and $t MPI threads"
        sed "s/^variable *r *index .*/variable    r     index ${r}/" squares.in > input_r.in
        salloc -Q -n $t mpirun ./lmp -in input_r.in | grep "Total wall time"
        echo -e "\n---------------------------\n"
    done
done
