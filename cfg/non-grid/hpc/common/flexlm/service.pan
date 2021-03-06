unique template common/flexlm/service;

include { 'common/flexlm/rpms/config' };

include { 'common/flexlm/config' };

## flexlm user
include { 'components/accounts/config' };

"/software/components/accounts/groups/flexlm" =
  nlist("gid", 486);

"/software/components/accounts/users/flexlm" = nlist(
  "uid", 493,
  "groups", list("flexlm"),
  "comment","",
  "shell", "/sbin/nologin",
  "homeDir", "/usr/share/flexlm"
);

prefix "/software/components/dirperm";
"paths" = {
    append(nlist(
                 "path",    "/usr/share/flexlm",
                 "owner",   "flexlm:root",
                 "perm",    "0770",
                 "type",    "d"
                ));
    append(nlist(
                 "path",    "/var/run/flexlm",
                 "owner",   "flexlm:root",
                 "perm",    "0770",
                 "type",    "d"
                ));
    append(nlist(
                 "path",    "/var/log/flexlm",
                 "owner",   "flexlm:root",
                 "perm",    "0770",
                 "type",    "d"
                ));
};


