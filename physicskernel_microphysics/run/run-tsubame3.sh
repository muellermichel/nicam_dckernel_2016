#! /bin/bash -x

if [ -e /etc/profile.d/modules.sh ] ; then
    . /etc/profile.d/modules.sh
fi

source ~/work-settings.sh
source ${WORK}/nicam-settings.sh
if [[ $NICAM_SYS == *"-intel-impi" ]] ; then
  if [ -e ${WORK}/mpi-settings-intel.sh ] ; then
        source ${WORK}/mpi-settings-intel.sh
  fi
else
  if [ -e ${WORK}/mpi-settings.sh ] ; then
        source ${WORK}/mpi-settings.sh
  fi
fi

HMDIR=${WORK}/nicam_dckernel_2016

OUTDIR=${HMDIR}/physicskernel_microphysics/run
mkdir -p ${OUTDIR}
cd       ${OUTDIR}

# ln -svf ${HMDIR}/bin/physicskernel_microphysics.exe .
# ln -svf ${HMDIR}/physicskernel_microphysics/data/vgrid94.dat .

# ln -svf ${HMDIR}/physicskernel_microphysics/data/snapshot.microphysics.pe000003 .
# ln -svf ${HMDIR}/physicskernel_microphysics/data/check.microphysics.pe000003 .

cp ${HMDIR}/bin/physicskernel_microphysics.exe .
cp ${HMDIR}/physicskernel_microphysics/data/vgrid94.dat .

cp ${HMDIR}/physicskernel_microphysics/data/snapshot.microphysics.pe000003 .
cp ${HMDIR}/physicskernel_microphysics/data/check.microphysics.pe000003 .


./physicskernel_microphysics.exe
