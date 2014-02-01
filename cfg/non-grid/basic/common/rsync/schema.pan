declaration template common/rsync/schema;

type rsync_section = {
    "comment" : string
    "path" : string
    "auth_users" : string[]
    "lock_file" : string
    "secrets" : string
    "hosts_allow" : string[]
    "max_connections" : long = 2
    "path" ? string
};

type rsync_file = {
    "sections" : rsync_section{}
    "log" : string
    "facility" : string
};

bind "/software/components/metaconfig/services/{/etc/rsyncd.conf}/contents" = rsync_file;
