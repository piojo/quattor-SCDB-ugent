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

unique template components/moab/config-xml;

include { 'components/moab/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/moab';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/moab/moab.pm'); 
