unique template common/nagios/checks/IB_firmware;

variable CHECK_NAME = "check_IB_version";
variable SCRIPT_NAME = CHECK_NAME+".sh";

#"/software/components/filecopy/services" = copy_file(
#    CHECKS_LOCATION+SCRIPT_NAME,
#    CHECKS_INCL+"files/"+SCRIPT_NAME,
#    0);

'/software/components/nrpe/options/command' = npush(CHECK_NAME,CHECKS_LOCATION+"restricted/"+SCRIPT_NAME + " $ARG1$");

"/software/components/symlink/links" =
        push(nlist(
                "name", CHECKS_LOCATION+"restricted/"+SCRIPT_NAME,
                "target", CHECKS_LOCATION+SCRIPT_NAME,
                "replace", nlist("all","yes"),
                )
        );
