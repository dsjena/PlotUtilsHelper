#ifndef PLOTUTILSDICT_H 
#define PLOTUTILSDICT_H 1

// Include files for PlotUtils dictionary.

/** @file PlotUtilsDict.h
 *  
 *
 *  @author Jeremy Wolcott <jwolcott@fnal.gov>
 *  @date   2012-11-25
 */
// ============================================================================
// PlotUtils
// ============================================================================

// here we need to include all the header files
// for the classes we want to make dictionaries of

#include <vector>

#include "PlotUtils/AnaBinning.h"
#include "PlotUtils/ArachneUtils.h"
#include "PlotUtils/Exceptions.h"
#include "PlotUtils/HistogramUtils.h"
#include "PlotUtils/MnvFluxConstraint.h"
#include "PlotUtils/MnvH1D.h" 
#include "PlotUtils/MnvH2D.h" 
#include "PlotUtils/MnvH3D.h"
#include "PlotUtils/MnvAnaTuple.h"
#include "PlotUtils/MnvLatErrorBand.h"
#include "PlotUtils/MnvLatErrorBand2D.h"
#include "PlotUtils/MnvLatErrorBand3D.h"
#include "PlotUtils/MnvPlotter.h"
#include "PlotUtils/MnvRecoShifter.h"
#include "PlotUtils/MnvVertErrorBand.h"
#include "PlotUtils/MnvVertErrorBand2D.h"
#include "PlotUtils/MnvVertErrorBand3D.h"
#include "PlotUtils/TargetUtils.h"
#include "PlotUtils/MnvNormalization.h"
#include "PlotUtils/POTCounter.h"
#include "PlotUtils/FluxReweighter.h"
#include "PlotUtils/FluxReweighterWithWiggleFit.h"
#include "PlotUtils/ChainWrapper.h"
#include "PlotUtils/TreeWrapper.h"

// this garbage is necessary so that gccxml is able to create dictionaries for these custom containers
// (since it otherwise doesn't know which specific version of these templated classes to instantiate)
// see: http://root.cern.ch/root/roottalk/roottalk10/0035.html
// somehow std::map<>s seem to be instantiated somewhere else, so explicit instantiation is not necessary?
#ifdef __GCCXML__
template class std::vector<PlotUtils::MnvEVD::Event>;                                       // the 'Events' typedef
template class std::pair<std::string, std::vector<PlotUtils::MnvEVD::Event> >;              // the 'EventGroup' typedef

template class std::map<std::string, std::vector<std::string> >;
template class std::pair<std::string, std::vector<std::string> >;
#endif

#endif // PLOTUTILSDICT_H

