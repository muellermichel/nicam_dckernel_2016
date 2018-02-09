arch=$1

qsub -cwd -g tga-ASUCA -l f_node=1 -l h_rt=00:10:00 -N physicskernel_microphysics -o OUT.log -e ERR.log -v arch=${arch} run-tsubame3.sh