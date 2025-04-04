/* -*- c++ -*- ----------------------------------------------------------
   LAMMPS - Large-scale Atomic/Molecular Massively Parallel Simulator
   https://www.lammps.org/, Sandia National Laboratories
   LAMMPS development team: developers@lammps.org

   Copyright (2003) Sandia Corporation.  Under the terms of Contract
   DE-AC04-94AL85000 with Sandia Corporation, the U.S. Government retains
   certain rights in this software.  This software is distributed under
   the GNU General Public License.

   See the README file in the top-level LAMMPS directory.
------------------------------------------------------------------------- */

#ifdef FIX_CLASS
// clang-format off
FixStyle(python/invoke,FixPythonInvoke);
FixStyle(python,FixPythonInvoke);
// clang-format on
#else

#ifndef LMP_FIX_PYTHON_INVOKE_H
#define LMP_FIX_PYTHON_INVOKE_H

#include "fix.h"

namespace LAMMPS_NS {

class FixPythonInvoke : public Fix {
 public:
  FixPythonInvoke(class LAMMPS *, int, char **);
  ~FixPythonInvoke() override;
  int setmask() override;
  void setup(int) override;
  void init() override;
  void end_of_step() override;
  void post_force(int) override;

 private:
  void *lmpPtr;
  void *pFunc;
  int selected_callback;
  bigint nextvalid();
  bigint nvalid;
};

}    // namespace LAMMPS_NS

#endif
#endif
