# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # moab, 14.6.0, 1, 20130919-1245
      #

unique template components/moab/config-rpm;

include { 'components/moab/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/moab';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-moab','13.10-SNAPSHOT20131104_1','noarch');
'dependencies/pre' ?= list('spma');

