#!/bin/bash

salloc mpirun -n 1 perf record -F 49 -o perf.rank0.data ./lmp -in squares.in
perf report -i perf.rank0.data