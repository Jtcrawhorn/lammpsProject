#!/bin/bash

# echo -e "Starting the serial rounded/polyhedron 3D tests.\n"
# R_VALUES=(1 2 4 8)
# for r in "${R_VALUES[@]}";
# do 
#     echo -e "Test rounded/polyhedron body style with replication factor r=${r}"
#     sed "s/^variable *r *index .*/variable    r     index ${r}/" test_rounded_polyhedron2.in > rounded_polyhedron_input_r.in
#     salloc -Q -n 1 mpirun ./lmp -in rounded_polyhedron_input_r.in | grep "Total wall time"
#     echo -e "\n---------------------------\n"

# done


# echo -e "Starting the parallelized rounded/polyhedron cubes tests.\n"
# THREADS=(2 4 8 16 32)
# R_VALUES=(1 2 4 8)
# for r in "${R_VALUES[@]}"; do 
#     for t in "${THREADS[@]}"; do
#         echo -e "Test rounded/polyhedron body style with replication factor r=${r} and ${t} threads"
#         sed "s/^variable *r *index .*/variable    r     index ${r}/" test_rounded_polyhedron2.in > rounded_polyhedron_input_r.in
#         salloc -Q -n $t mpirun ./lmp -in rounded_polyhedron_input_r.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done

# echo -e "Starting the OpenMP parallel test for body style rounded/polyhedron cubes.\n"
# R_VALUES=(1 2 4 8)
# THREADS=(2 4 8 16 32)
# for threads in "${THREADS[@]}"
# do
#     for r in "${R_VALUES[@]}"
#     do
#         export OMP_NUM_THREADS=$threads
#         echo -e "rounded/polygon test with $atoms atoms and $threads OpenMP threads"
#         sed "s/^variable *r *index .*/variable    r     index ${r}/" test_rounded_polyhedron2.in > rounded_polyhedron_input_r.in
#         OMP_NUM_THREADS=$threads srun ./lmp -in rounded_polyhedron_input_r.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done