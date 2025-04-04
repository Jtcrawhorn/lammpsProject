#!/bin/bash

# If you want to see the entire output for our tests not just the wall-clock time then you can run them without the grep included. 
# For this project we are focused on improving the runtime. 

# Run the serial tests for body style nparticle.
# echo -e "Starting the serial nparticle tests.\n"
# export OMP_NUM_THREADS=1
# NUM_ATOMS=(10000 15000 20000 25000 30000 35000 40000 45000 50000 55000)
# for ((i=0; i<${#NUM_ATOMS[@]}; i++))
# do
#     echo -e "nparticle test with ${NUM_ATOMS[i]} atoms"
#     sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_nparticle.in > test_dynamic.in
#     OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in | grep "Total wall time"
#     echo -e "\n---------------------------\n"
# done

# Run the serial tests for body style rounded/polygon.
# echo -e "Starting the serial rounded/polygon tests.\n"
# NUM_ATOMS=(50000 75000 100000 150000 200000 250000 300000)
# for ((i=0; i<${#NUM_ATOMS[@]}; i++))
# do
#     echo -e "rounded/polygon test with ${NUM_ATOMS[i]} atoms"
#     sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_rounded_polygon.in > test_dynamic.in
#     OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in | grep "Total wall time"
#     echo -e "\n---------------------------\n"
# done

# Run the serial tests for body style rounded/polyhedron.
# echo -e "Starting the serial rounded/polhedron tests.\n"
# NUM_ATOMS=(50000 75000 100000 150000 200000 250000 300000)
# for ((i=0; i<${#NUM_ATOMS[@]}; i++))
# do
#     echo -e "rounded/polyhedron test with ${NUM_ATOMS[i]} atoms"
#     sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_rounded_polyhedron.in > test_dynamic.in
#     OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in | grep "Total wall time"
#     echo -e "\n---------------------------\n"
# done


# Run the OpenMP tests. Each test is ran with 2, 4, 8, 16, and 32 threads.
echo -e "Starting the OpenMP parallel test for body style nparticle.\n"
NUM_ATOMS=(50000 100000 150000 200000 250000 300000 350000 400000 450000 500000)
THREADS=(2 4 8 16 32)
for threads in "${THREADS[@]}"
do
    for atoms in "${NUM_ATOMS[@]}"
    do
        export OMP_NUM_THREADS=$threads
        echo -e "nparticle test with $atoms atoms and $threads OpenMP threads"
        sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random $atoms /" test_nparticle.in > test_dynamic.in
        OMP_NUM_THREADS=$threads srun ./lmp -in test_dynamic.in | grep "Total wall time"
        echo -e "\n---------------------------\n"
    done
done


# echo -e "Starting the OpenMP parallel test for body style rounded_polygon.\n"
# NUM_ATOMS=(10000 15000 20000 25000 30000 35000 40000 45000 50000 55000)
# THREADS=(2 4 8 16 32)
# for threads in "${THREADS[@]}"
# do
#  for atoms in "${NUM_ATOMS[@]}"
#     do
#         echo -e "rounded_polygon test with $atoms atoms and $threads OpenMP threads"
#         sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random $atoms /" test_rounded_polygon.in > test_dynamic.in
#         OMP_NUM_THREADS=$threads srun ./lmp -in test_dynamic.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done


# echo -e "Starting the OpenMP parallel test for body style rounded_polyhedron.\n"
# NUM_ATOMS=(10000 15000 20000 25000 30000 35000 40000 45000 50000 55000)
# THREADS=(2 4 8 16 32)
# for threads in "${THREADS[@]}"
# do
#   for atoms in "${NUM_ATOMS[@]}"
#     do
#         echo -e "rounded_polyhedron test with $atoms atoms and $threads OpenMP threads"
#         sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random $atoms /" test_rounded_polyhedron.in > test_dynamic.in
#         OMP_NUM_THREADS=$threads srun ./lmp -in test_dynamic.in | grep "Total wall time"
#         echo -e "\n---------------------------\n"
#     done
# done