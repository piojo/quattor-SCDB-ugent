unique template machine-types/log-server;

final variable LOGSTASH_JAVA_MEM_X = 512;

include 'machine-types/core';

include 'common/logging/service';

include 'common/elasticsearch/service';
include 'common/kibana/service';

include 'common/logstash/service';

include 'common/logging/server';

# Reduce the ES refresh rate for better performance.
"/software/components/metaconfig/services/{/etc/elasticsearch/elasticsearch.yml}/contents/index/refresh" = 10;
