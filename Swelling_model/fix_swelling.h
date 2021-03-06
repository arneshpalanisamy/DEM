/* ----------------------------------------------------------------------
    This is the

    ██╗     ██╗ ██████╗  ██████╗  ██████╗ ██╗  ██╗████████╗███████╗
    ██║     ██║██╔════╝ ██╔════╝ ██╔════╝ ██║  ██║╚══██╔══╝██╔════╝
    ██║     ██║██║  ███╗██║  ███╗██║  ███╗███████║   ██║   ███████╗
    ██║     ██║██║   ██║██║   ██║██║   ██║██╔══██║   ██║   ╚════██║
    ███████╗██║╚██████╔╝╚██████╔╝╚██████╔╝██║  ██║   ██║   ███████║
    ╚══════╝╚═╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝®

    DEM simulation engine, released by
    DCS Computing Gmbh, Linz, Austria
    http://www.dcs-computing.com, office@dcs-computing.com

    LIGGGHTS® is part of CFDEM®project:
    http://www.liggghts.com | http://www.cfdem.com

    Core developer and main author:
    Christoph Kloss, christoph.kloss@dcs-computing.com

    LIGGGHTS® is open-source, distributed under the terms of the GNU Public
    License, version 2 or later. It is distributed in the hope that it will
    be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
    of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. You should have
    received a copy of the GNU General Public License along with LIGGGHTS®.
    If not, see http://www.gnu.org/licenses . See also top-level README
    and LICENSE files.

    LIGGGHTS® and CFDEM® are registered trade marks of DCS Computing GmbH,
    the producer of the LIGGGHTS® software and the CFDEM®coupling software
    See http://www.cfdem.com/terms-trademark-policy for details.

-------------------------------------------------------------------------
    Contributing author and copyright for this file:
    (if not contributing author is listed, this file has been contributed
    by the core developer)

    Copyright 2012-     DCS Computing GmbH, Linz
    Copyright 2009-2012 JKU Linz
------------------------------------------------------------------------- */

#ifdef FIX_CLASS

FixStyle(swelling,Fix_swelling)


#else

#ifndef LMP_FIX_SWELLING_H
#define LMP_FIX_SWELLING_H

#include "fix_heat_gran.h"


namespace LAMMPS_NS {

  class Fix_swelling : public Fix {

    friend class FixMultisphere;
    friend class Multisphere;

  public:
    Fix_swelling(class LAMMPS *, int, char **);
    ~Fix_swelling(){};
    virtual void post_create();
    virtual void pre_delete(bool unfixflag){ UNUSED(unfixflag);};

    
    virtual int setmask();
    virtual void init();
    virtual void post_integrate();
    
    // per default these three methods throw errors.
    virtual void updatePtrs();

  protected:
    
    
    class FixPropertyAtom* fix_temp;
    class FixPropertyAtom* fix_alpha;
    class FixPropertyAtom* fix_tdelayelapsed;
    class FixPropertyAtom* fix_Sdim;
    class FixPropertyAtom* fix_Swratio;
    class FixPropertyAtom* fix_iradi;
    class FixPropertyGlobal* fix_densityp;
    class FixPropertyGlobal* fix_densityf;
    

    
    double *Temp;       
    double *alpha;
    double *tdelayelapsed;
    double *Sdim;
    double *Swratio;
    double *iradi;
    double T0,K0,tau_ref,Tref,Tmin;
            
   

    class PairGran *pair_gran;
    int history_flag;
  };

}

#endif
#endif
