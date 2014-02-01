unique template common/httpd/config/php_conf;

include 'common/httpd/schema';

bind "/software/components/metaconfig/services/{/etc/httpd/conf.d/php.conf}/contents" = httpd_vhosts;

prefix "/software/components/metaconfig/services/{/etc/httpd/conf.d/php.conf}";
"module" = "httpd/generic_server";
"daemon/0" = "httpd";

"/software/components/metaconfig/services/{/etc/httpd/conf.d/php.conf}/contents" = create('common/httpd/struct/php_conf');
