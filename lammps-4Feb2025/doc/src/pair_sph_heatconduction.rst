.. index:: pair_style sph/heatconduction
.. index:: pair_style sph/heatconduction/gpu

pair_style sph/heatconduction command
=====================================

Accelerator Variants: *sph/heatconduction/gpu*

Syntax
""""""

.. code-block:: LAMMPS

   pair_style sph/heatconduction

Examples
""""""""

.. code-block:: LAMMPS

   pair_style sph/heatconduction
   pair_coeff * * 1.0 2.4

Description
"""""""""""

The sph/heatconduction style computes heat transport between SPH particles.
The transport model is the diffusion equation for the internal energy.

See `this PDF guide <PDF/SPH_LAMMPS_userguide.pdf>`_ to using SPH in
LAMMPS.

.. note::

   Please note that the SPH PDF guide file has not been updated for
   many years and thus does not reflect the current *syntax* of the
   SPH package commands. For that please refer to the LAMMPS manual.

The following coefficients must be defined for each pair of atoms
types via the :doc:`pair_coeff <pair_coeff>` command as in the examples
above.

* D diffusion coefficient (length\^2/time units)
* h kernel function cutoff (distance units)

----------

.. include:: accel_styles.rst

----------

Mixing, shift, table, tail correction, restart, rRESPA info
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

This style does not support mixing.  Thus, coefficients for all
I,J pairs must be specified explicitly.

This style does not support the :doc:`pair_modify <pair_modify>`
shift, table, and tail options.

This style does not write information to :doc:`binary restart files <restart>`.  Thus, you need to re-specify the pair_style and
pair_coeff commands in an input script that reads a restart file.

This style can only be used via the *pair* keyword of the :doc:`run_style respa <run_style>` command.  It does not support the *inner*,
*middle*, *outer* keywords.

Restrictions
""""""""""""

This pair style is part of the SPH package.  It is only enabled
if LAMMPS was built with that package.  See the :doc:`Build package <Build_package>` page for more info.

Related commands
""""""""""""""""

:doc:`pair_coeff <pair_coeff>`, pair_sph/rhosum

Default
"""""""

none
