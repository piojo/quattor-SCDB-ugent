unique template config/core/base;

variable USE_OFED ?= false;

variable OS_VERSION_PARAMS = nlist("major", "sl5",
    "minor", "x",
    "version", "sl5x",
    "arch", "x86_64"
);

variable RPM_BASE_FLAVOUR = '';
variable RPM_BASE_FLAVOUR_VERSIONID = 5;
variable RPM_BASE_FLAVOUR_NAME = format('el%s',RPM_BASE_FLAVOUR_VERSIONID);


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_VARIANT ?= "";

variable KERNEL_FIRMWARE_ARCH ?= "noarch";
#
# Kernel version and CPU architecture
#
include { 'os/kernel_version_arch' };
## new kernel naming
"/system/kernel/version" = KERNEL_VERSION;

prefix "/software/packages";
"{grub}" = nlist();


# Default architecture to use for gLite, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_BASE ?= PKG_ARCH_DEFAULT;

variable OPENLDAP_VERSION ?= "2.3.43-25.el5";


# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
    return(OS_BASE_CONFIG_SITE);
} else {
    return(null);
};
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };
