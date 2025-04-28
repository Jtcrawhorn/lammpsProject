Put liblammps.a and lmp in the build file.
 To run: mpirun -np 4 /nfs/home/USER_EID/cs470/lammpsProject/lammps-4Feb2025/build/lmp -in input.lj
 
 If you can't run it:
 1. Check File Permissions
 Run the following command to check the permissions of the lmp executable:
 ls -l /nfs/home/USER_EID/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp
 
 If the output does not show execute (x) permissions (e.g., -rwx------), add execute permissions with:
 chmod +x /nfs/home/owenjd/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp
 
 
 ran with this:
/nfs/home/yourId/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp -in input.lj
/nfs/home/yourId/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp -in inputFileName.extension
 
 
 This is one thing the community wanted to be implemented https://github.com/orgs/lammps/projects/2/views/1?pane=issue&itemId=24639251. 
 
 This is explains what body styles do. https://docs.lammps.org/Howto_body.html    
 
 To run the tests be in the build directory and run bash run_tests.bash. Other tests are in the various bash files but can also be run like bash bash_file_name.bash. 

 If you plan on running the test we suggest that you have a lot of time or you adjust the tests because they can take some time to run especially when using one or two threads.

You can see some of our insights by running perf report -i perf.rank0.data. This report was created by running
salloc mpirun -n 1 perf record -F 49 -o perf.rank0.data ./lmp -in squares.in. Or just run run_perf.bash and it will do all this for you. 

The two function that are causing the greatest increase in runtime is the compute_distance_to_vertex and vertex_against_edge in PairBodyRoundedPolygon which is in the src/BODY folder. These functions are also in the other body styles but go by slightly different names like compute for nparticle and rounded/polyhedron. 

These reports help with our insights into the system. It also shows where in the code there could potentially be room for improvement. 