# lammpsProject
Put liblammps.a and lmp in the build file.
To run: mpirun -np 4 /nfs/home/USER_EID/cs470/lammpsProject/lammps-4Feb2025/build/lmp -in input.lj

If you can't run it:
1. Check File Permissions
Run the following command to check the permissions of the lmp executable:
ls -l /nfs/home/USER_EID/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp

If the output does not show execute (x) permissions (e.g., -rwx------), add execute permissions with:
chmod +x /nfs/home/owenjd/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp


ran with this:
mpirun -np 4 /nfs/home/owenjd/cs470/laamps-final/lammpsProject/lammps-4Feb2025/build/lmp -in input.lj


This is one thing the community wanted to be implemented https://github.com/orgs/lammps/projects/2/views/1?pane=issue&itemId=24639251. 

This is explains what body does. https://docs.lammps.org/Howto_body.html    
