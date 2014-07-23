# This template acts as a wrapper to define some AII related variable
# from current configuration, in particular OS version.
#
# This template is not really OS version dependent but having it in the
# OS templates is easier in case some particular tweakening is required
# for an OS version.

template config/quattor/aii;

## disable
variable AII_OSINSTALL_OPTION_LANG_SUPP = list("none");
variable AII_OSINSTALL_OPTION_ZEROMBR_ARGS = list('');
variable AII_OSINSTALL_NEEDS_SECTION_END = true;

# Include base configuration for AII

include { 'quattor/aii/config' };

"/system/aii/osinstall/ks/mouse" = null;

"/system/aii/osinstall/ks/base_packages" = list(
    "perl-LC",
    "perl-IO-String",
    "perl-CAF",
    "perl-parent",
    "perl-common-sense",
    "perl-CDB_File",
    "perl-GSSAPI",
    "perl-JSON-XS",
    "ccm",
    "perl-Pod-POM",
    "perl-Template-Toolkit",
    "ncm-ncd",
    "ncm-query",
    "ncm-spma",
    "cdp-listend",
    "ncm-cdispd",
    "cabundle-hpcugent",
    "kexec-tools",
);

# packages need to be included
prefix "/software/packages";
"{kexec-tools}" = nlist();

"/system/aii/osinstall/ks/packages_args" = list("--ignoremissing");

"/system/aii/osinstall/ks/end_script" = "%end";

# crucial since all network devices are under NM control (eg bnx2x 10g needs it)
"/system/aii/osinstall/ks/packages" = append("NetworkManager");
