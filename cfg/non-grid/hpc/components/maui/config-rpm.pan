# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # maui, 13.9.0, 1, 20130919-1245
      #

unique template components/maui/config-rpm;

include { 'components/maui/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/maui';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-maui','13.9.0-1','noarch');
'dependencies/pre' ?= list('spma');

