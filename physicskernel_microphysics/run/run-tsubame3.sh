#! /bin/bash -x

physical_cores() {
	PHYSICAL=`cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l`
	CORES=`cat /proc/cpuinfo | grep "cpu cores" | sort | uniq | cut -d':' -f2`
	PHY_CORES=$(($PHYSICAL * $CORES))
	echo ${PHY_CORES}
}

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

cores=$(physical_cores)
if [ ! -z $NCPUS ] ; then
	cores=${NCPUS}
fi
local_rank=${OMPI_COMM_WORLD_LOCAL_RANK}
if [ -z "${local_rank}" ] ; then
	local_rank=${MV2_COMM_WORLD_LOCAL_RANK}
fi
if [ -z "${local_rank}" ] ; then
	local_rank=${PMI_RANK}
fi
if [ -z "${local_rank}" ] ; then
	local_rank=0
fi
local_size=${OMPI_COMM_WORLD_LOCAL_SIZE}
if [ -z "${local_size}" ] ; then
	local_size=${MV2_COMM_WORLD_LOCAL_SIZE}
fi
if [ -z "${local_size}" ] ; then
	local_size=${PMI_SIZE}
fi
if [ -z "${local_size}" ] ; then
	local_size=${PROC_PER_NODE}
fi
export OMP_NUM_THREADS=$(($cores / $local_size))
# export OMP_NUM_THREADS=1
export KMP_AFFINITY=compact

echo "local rank: ${local_rank}, local size: ${local_size}, num. threads: ${OMP_NUM_THREADS}"

HMDIR=${WORK}/nicam_dckernel_2016

OUTDIR=${HMDIR}/physicskernel_microphysics/run
mkdir -p ${OUTDIR}
cd       ${OUTDIR}

ln -svf ${HMDIR}/bin/physicskernel_microphysics.exe .
ln -svf ${HMDIR}/physicskernel_microphysics/data/vgrid94.dat .

ln -svf ${HMDIR}/physicskernel_microphysics/data/snapshot.microphysics.pe000003 .
ln -svf ${HMDIR}/physicskernel_microphysics/data/check.microphysics.pe000003 .

time ./physicskernel_microphysics.exe
