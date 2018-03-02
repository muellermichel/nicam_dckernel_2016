# Copyright (C) 2016 Michel Müller, Tokyo Institute of Technology

# This file is part of Hybrid Fortran.

# Hybrid Fortran is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Hybrid Fortran is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with Hybrid Fortran. If not, see <http://www.gnu.org/licenses/>.

#***************************************************************************#
#  Makefile that gets copied into the individual build directories.         #
#  Dependencies of your sources need to be specified here.                  #
#                                                                           #
#  Date             2013/02/01                                              #
#  Author           Michel Müller (TITECH)                                  #
#***************************************************************************#
NICAM_HOME=${PWD}/..
TOOLSDIR=${HF_DIR}/hf_processor/
include ./MakesettingsGeneral
include ./Makesettings
include ${TOOLSDIR}MakefileForCompilationCommon

helper_functions.o: time_profiling.o
helper_functions_gpu.o: helper_functions.o
helper_functions_cuda_fortran.o: helper_functions.o

# ADD YOUR DEPENDENCIES BELOW THIS LINE
# -------->

dumpio.o               : dumpio.c
mod_debug.o            : mod_precision.o problem_size.inc

mod_thrmdyn.o          : mod_precision.o mod_debug.o
mod_satadjust.o        : mod_precision.o mod_debug.o mod_thrmdyn.o
mod_vadv1d.o           : mod_precision.o mod_debug.o
mod_precip_transport.o : mod_precision.o mod_debug.o mod_thrmdyn.o mod_vadv1d.o

mod_mp_driver.o        : mod_precision.o mod_debug.o mod_satadjust.o mod_mp_nsw6.o
mod_mp_nsw6.o          : mod_precision.o mod_debug.o mod_satadjust.o mod_thrmdyn.o mod_precip_transport.o

main.o : ${USER_LIB} mod_precision.o dumpio.o mod_debug.o mod_mp_driver.o time_profiling.o helper_functions.o

