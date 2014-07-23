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


unique template components/ceph/sudo;

include 'components/sudo/config';


"/software/components/sudo/privilege_lines" = { 
    sudolist = list(
        "/usr/bin/ceph-deploy", 
        "/usr/bin/python -c import sys;exec(eval(sys.stdin.readline()))", 
        "/usr/bin/python -u -c import sys;exec(eval(sys.stdin.readline()))", 
        "/bin/mkdir",
        "/usr/bin/file -s *"
    );
    foreach (i; cmd; sudolist){
        nl = nlist("host", "ALL",
                   "options", "NOPASSWD:",
                   "run_as", "ALL",
                   "user", "ceph");
        nl["cmd"] = cmd;
        append(nl);
    };  
    SELF;
};

