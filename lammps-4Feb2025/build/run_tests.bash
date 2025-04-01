#!/bin/bash

# Run the serial tests for body style nparticle.
echo -e "Starting the serial nparticle tests.\n"
NUM_ATOMS=(10000 15000 20000 25000 30000 35000 40000 45000 50000 55000)
for ((i=0; i<${#NUM_ATOMS[@]}; i++))
do
    sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_nparticle.in > test_dynamic.in
    OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in
    echo -e "\n---------------------------\n"
done

# Run the serial tests for body style rounded/polygon.
echo -e "Starting the serial rounded/polygon tests.\n"
NUM_ATOMS=(50000 75000 100000 150000 200000 250000 300000)
for ((i=0; i<${#NUM_ATOMS[@]}; i++))
do
    sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_rounded_polygon.in > test_dynamic.in
    OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in
    echo -e "\n---------------------------\n"
done

# Run the serial tests for body style rounded/polyhedron.
echo -e "Starting the serial rounded/polhedron tests.\n"
NUM_ATOMS=(50000 75000 100000 150000 200000 250000 300000)
for ((i=0; i<${#NUM_ATOMS[@]}; i++))
do
    sed "s/create_atoms 1 random [0-9]\+ /create_atoms 1 random ${NUM_ATOMS[i]} /" test_rounded_polyhedron.in > test_dynamic.in
    OMP_NUM_THREADS=1 srun ./lmp -in test_dynamic.in
    echo -e "\n---------------------------\n"
done