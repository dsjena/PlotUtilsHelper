#!/bin/bash
#-----------------------------------------------------
# This script is written to install cvs version of 
# PlotUtils. Since, it takes several changes in code
# Structure, this scripts takes care of those changes
# S. Jena, Aug 19 05:53:29 CST 2018
# TODO: Idenify OS/ROOT
#-------------------------------------------------------



# Change to appropreate path of your installation
#

INSTALLPATH="/Users/sjena/HepSoft/minerva/InstallCvsVersion"

# ---- DONOT Change Anything Else ----------------------
#
export PLOTUTILSPATH=${INSTALLPATH}
mkdir -p ${PLOTUTILSPATH}
cd ${PLOTUTILSPATH}


# You must do kinit
export CVSROOT="minervacvs@cdcvs.fnal.gov:/cvs/mnvsoft"
export CVS_RSH=ssh


#Get the Helper script
cvs co -d temp Personal/sjena/plotutils
cd temp
export WD=${PWD}

# Due to some weired behaviour, using following way
#sed -i -e 's/\/minerva\/app\/users\/sjena\/standalone\/gpvm/${PLOTUTILSPATH}/g' standalone.sh
sed -i -e "s|/minerva/app/users/sjena/standalone/gpvm|${PLOTUTILSPATH}|g" standalone.sh


source standalone.sh
cd $PLOTUTILSPATH
cvs co Ana/PlotUtils
cd Ana/PlotUtils


cp $WD/PlotUtilsDictSD.h $PLOTUTILSPATH/Ana/PlotUtils/dict/PlotUtilsDict.h
cp $WD/PlotUtilsDictSD.xml $PLOTUTILSPATH/Ana/PlotUtils/dict/PlotUtilsDictSD.xml
cp $WD/standalone.sh $PLOTUTILSPATH/Ana/PlotUtils/setup/. 

rm -f $PLOTUTILSPATH/Ana/PlotUtils/PlotUtils/ErrorHandler.h
rm -f $PLOTUTILSPATH/Ana/PlotUtils/PlotUtils/ErrorHandler.cxx
rm -f $PLOTUTILSPATH/Ana/PlotUtils/PlotUtils/CrashOnROOTMessage.h

#insertfile="\#include <string>\n\#include <vector>"
#match="\#include <algorithm>"
file=$PLOTUTILSPATH/Ana/PlotUtils/PlotUtils/VariableBase.h
#sed -i "s|$match|$match\n$insertfile|g" $file

#work arround to fix string and vector error
# Added to VariableBase and commited
#awk 'NR==5{print "#include <string>\n\#include <vector>"}1' $file > tmp.h
#mv tmp.h $file

 
cp $WD/Makefile.OsX $PLOTUTILSPATH/Ana/PlotUtils/Makefile

#cd Ana/PlotUtils
source setup/standalone.sh

make

cp ${WD}/standalone_rootlogon.C  ~/.rootlogon.C



