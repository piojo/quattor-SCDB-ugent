unique template common/nagios/checks/ctdb;

variable CHECK_NAME = "check_ctdb";
variable SCRIPT_NAME = CHECK_NAME;

'/software/components/nrpe/options/command' =
    npush(CHECK_NAME,
          format("%s/%s -i ping -w $ARG1$ -c $ARG2$ -s",
                 CHECKS_LOCATION, SCRIPT_NAME));

include 'components/sudo/config';

"/software/components/sudo/privilege_lines" = {
    append(nlist("cmd", "/usr/bin/ctdb -n all ping",
                 "user", "nagios",
                 "run_as", "ALL",
                 "options", "NOPASSWD:",
                 "host", "ALL"));
    append(nlist("cmd", "/usr/bin/ctdb -Y scriptstatus",
                 "user", "nagios",
                 "run_as", "ALL",
                 "options", "NOPASSWD:",
                 "host", "ALL"));
};
