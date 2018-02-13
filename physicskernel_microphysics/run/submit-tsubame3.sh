arch=$1

qsub -cwd -g tga-ASUCA -p -3 -l f_node=1 -l h_rt=00:05:00 -N physicskernel_microphysics -o OUT.log -e ERR.log -v arch=${arch} run-tsubame3.sh