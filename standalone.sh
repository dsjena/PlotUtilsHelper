#Setup Script for Standalone PlotUtils
#
#-----------------------------------------------------------------
#/minerva/app/users/sjena/standalone/gpvm/Ana/PlotUtils
export PLOTUTILSPATH="/minerva/app/users/sjena/standalone/gpvm"
#-----------------------------------------------------------------
export PLOTUTILSROOT=${PLOTUTILSPATH}"/Ana/PlotUtils"
export LD_LIBRARY_PATH=${PLOTUTILSROOT}:${LD_LIBRARY_PATH}
export PYTHONPATH=${PLOTUTILSROOT}/python:${PYTHONPATH}
export PLOTUTILSTYPE="STANDALONE"
export PLOTUTILSVERSION="ROOT6"
