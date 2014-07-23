# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Kenneth Waegeman <Kenneth.Waegeman@UGent.be>
#

# 
# #
      # ceph, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140616123104, 20140616-1431
      #

unique template components/ceph/config-rpm;

include { 'components/ceph/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ceph';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-ceph','14.4.0-rc3_SNAPSHOT20140616123104','noarch');
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

