# Brief description
These are helper-scripts to install PlotUtils in standalone mode from CVS. While we are preparing a git supported PlotUtils, this help is to keep CVS version untouched. 

Same script are available at MINERvA CVS @ Personal/sjena/plotutils

The help document is available in MINERvA [DocDB](https://minerva-docdb.fnal.gov/cgi-bin/private/RetrieveFile?docid=25462)

### Breif Steps To install in Mac OS (Should work for linux but not tested)

* First, install CMAKE, ROOT6 and BOOST, I assume you can do it by your own. 
  * If you need help there is a nice helper script to install it 
  * just type following in your terminal
  * bash <(curl -fsSL http://hepsoft.satyajitjena.in)
  * Follow terminal instruction

* You can download this [script](https://github.com/dsjena/PlotUtilsHelper/blob/master/install-cvs-version.sh)
  * Before you run this script you must have your CMAKE, ROOT and BOOST set in your evn
  * change the INSTALLPATH="/Users/sjena/HepSoft/minerva/InstallCvsVersion" to your choice
  * type bash install-cvs-version.sh
  * it should work fine

* Manual Installation, Follow [DocDB](https://minerva-docdb.fnal.gov/cgi-bin/private/RetrieveFile?docid=25462), Same copy is also available in this repo.

* Send me mail if you face some issues (perhaps you know my email id)
