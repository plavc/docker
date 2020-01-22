

```
docker run --log-driver=fluentd --log-opt fluentd-address=192.168.2.4:24225 ubuntu echo "Hello world"
docker run --log-driver=fluentd --log-opt fluentd-address=host.docker.internal:24224 ubuntu echo "Hello world"
```

This is IP address of Docker for Windows: 10.0.75.2 

^(?<time>\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}.\d{3})\s*(?<log_level>\w+)\s*[(?<appName>.*)\,(?<traceId>.*)\,(?<spanId>.*)\,(?<exported>(?:false|true\b)*)\]\d*\s*(?:---)\s* \[\s*(?<threadName>.*)\]\s(?<class>(?:\w|[.]|[-])*)\s*[:]\s*(?<message>.*$)


# WORKING
`
^(?<time>\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}.\d{3})\s*(?<log_level>\w+)\s*\[(?<appName>.*)\,(?<traceId>.*)\,(?<spanId>.*)\,(?<exported>(?:false|true\b)*)\]\s*\d*\s*(?:[\-]{3})\s*\[\s*(?<threadName>.*)\]\s(?<comonent>(?:[^\s])*)\s*[:]\s*(?<message>.*$)
`

2020-01-19 13:15:24.659  INFO [,72ad71547b16cba7,72ad71547b16cba7,false] 1 --- [   scheduling-1] n.p.r.c.boundary.ScheduledCrawlerImpl    : Running crawler


^\d*\s*(?:---\b)\s* \[\s*(?<threadName>.*)\]




2020-01-19 15:24:42.414  WARN [,,,] 1 --- [           main] uration$JodaDateTimeJacksonConfiguration : Auto-configuration of Jackson's Joda-Time integration is deprecated in favor of using java.time (JSR-310).'


2020-01-19 15:09:29 +0000 [warn]: #0 dump an error event: error_class=Fluent::Plugin::Parser::ParserError error="pattern not matched with data '{"type": "server", "timestamp": "2020-01-19T15:09:29,319Z", "level": "INFO", "component": "o.e.c.m.MetaDataIndexTemplateService", "cluster.name": "docker-cluster", "node.name": "HEYJUDE", "message": "adding template [.management-beats] for index patterns [.management-beats]", "cluster.uuid": "cIbxwyPbQ-qPIU4w9VWX1g", "node.id": "ck0L5fLdTJiqn4ffn0p3LA"  }'" location=nil tag=".efk.elasticsearch" time=1579446569 record={"source"=>"stdout", "log"=>"{"type": "server", "timestamp": "2020-01-19T15:09:29,319Z", "level": "INFO", "component": "o.e.c.m.MetaDataIndexTemplateService", "cluster.name": "docker-cluster", "node.name": "HEYJUDE", "message": "adding template [.management-beats] for index patterns [.management-beats]", "cluster.uuid": "cIbxwyPbQ-qPIU4w9VWX1g", "node.id": "ck0L5fLdTJiqn4ffn0p3LA"  }", "container_id"=>"011f86f2a416d6de9f30caa36f531473069dc8fda109261bd4dfeb80f7234463", "container_name"=>"/efk_elasticsearch.1.zf3wsm1ntalypi9zdubsu27ts"}