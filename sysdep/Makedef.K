#
# ------ FOR K computer -----
#
FFLAGS_FAST  = -Kfast,parallel,ocl,preex,array_private,noalias=s,mfunc=1 \
               -Qi -Qt -X03 -Ncompdisp -Koptmsg=1 -Cpp                   \
               -Kdynamic_iteration -Ksimd,openmp                         \
               -Kauto,threadsafe

# note: Kauto,threadsafe,autoobjstack,temparraystack depends on the stacksize.
# If you find the segmentation fault error, please check.

FFLAGS_DEBUG = -O0                                                       \
               -Qi -Qt -X03 -v03s -v03d -v03o -Ncompdisp -Koptmsg=1 -Cpp \
               -Ec -Eg -Ha -He -Hf -Ho -Hs -Hu -Hx -Ncheck_global        \
               -DDEBUG

FC     = mpifrtpx
FFLAGS = $(FFLAGS_FAST)
#FFLAGS = $(FFLAGS_DEBUG)

CC     = mpifccpx
CFLAGS_FAST  = -Kfast,parallel,ocl,preex,array_private,region_extension,restp=all -Ksimd
CFLAGS_DEBUG = -O0

CFLAGS = $(CFLAGS_FAST)
#CFLAGS = $(CFLAGS_DEBUG)

##### Special Options #####

# Performance monitor
# disable
#PERF_MONIT = -Ntl_notrt -U_FIPP_ -U_FAPP_ -U_FINEPA_
# fipp
#PERF_MONIT = -Ntl_trt -D_FIPP_ -U_FAPP_ -U_FINEPA_
# fapp
PERF_MONIT = -Ntl_trt -U_FIPP_ -D_FAPP_ -U_FINEPA_
# fine PA
#PERF_MONIT = -Ntl_trt -U_FIPP_ -U_FAPP_ -D_FINEPA_

###########################

MODDIROPT ?= -M $(BUILDDIR)
OBJDIR    ?= $(BUILDDIR)

LD     = $(FC)
LFLAGS = $(FFLAGS)

MAKE    = make
INSTALL = cp -u
AR      = ar
ARFLAGS = r
RANLIB  = ranlib
