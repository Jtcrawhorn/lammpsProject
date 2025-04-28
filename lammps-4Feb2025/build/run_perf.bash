#!/bin/bash

# rm -f perf.rank0.data
# rm -f perf.nparticle2.data
# rm -f perf.rounded_polyhedron.data

# Insights for rounded/polygon body style.
# salloc mpirun -n 1 perf record -F 49 -o perf.rank0.data ./lmp -in squares.in
perf report -i perf.rank0.data

# Insights for nparticle body style.
# salloc mpirun -n 1 perf record -F 49 -o perf.nparticle2.data ./lmp -in test_nparticle2.in
# perf report -i perf.nparticle2.data

# Insights for rounded/polyhedron body style.
# salloc mpirun -n 1 perf record -F 49 -o perf.rounded_polyhedron.data ./lmp -in test_rounded_polyhedron.in
# perf report -i perf.rounded_polyhedron.data