#! /bin/bash -x

arch_input=$1
if [ -z $arch_input ] ; then
	arch_input=${arch}
fi
if [ -z $arch_input ] ; then
	arch_input="cpu"
fi

source ~/work-settings.sh
HMDIR=${WORK}/nicam_dckernel_2016

OUTDIR=${HMDIR}/physicskernel_microphysics/run
mkdir -p ${OUTDIR}
cd       ${OUTDIR}

# ln -svf ${HMDIR}/physicskernel_microphysics/run/main/main_${arch_input} ./physicskernel_microphysics.exe
ln -svf ${HMDIR}/physicskernel_microphysics/src/physicskernel_microphysics.exe .
ln -svf ${HMDIR}/physicskernel_microphysics/data/vgrid94.dat .

ln -svf ${HMDIR}/physicskernel_microphysics/data/snapshot.microphysics.pe000003 .
ln -svf ${HMDIR}/physicskernel_microphysics/data/check.microphysics.pe000003 .

echo "running physicskernel_microphysics on ${arch_input}"
time ./physicskernel_microphysics.exe
