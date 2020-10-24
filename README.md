# docker-compose.yml für docker-fritzcollectd

A docker-compose file for setting up a metric collector
via collectd, influxdb to Grafana.

![Fritzbox Grafana Dashboard](https://raw.githubusercontent.com/der-pw/docker-fritzcollectd/docker-compose/img/FritzBox-Grafana-Dashboard.jpg) 



###### /etc/influxdb/influxdb.conf:
```
[[collectd]]
   enabled = true
   bind-address = ":25826"
   database = "collectd"
  # retention-policy = ""
  #
  # The collectd service supports either scanning a directory for multiple types
  # db files, or specifying a single db file.
   typesdb = "/usr/share/collectd/types.db"
```


#### Credits:
FRITZ!Box Router Status - Christian Fetzer
The idea with the dashboard was probably the pitch.
https://grafana.com/grafana/dashboards/713

The idea of ​​packing collectd into a Docker container with a FritzBox connection - Markus Rudel
https://github.com/rudelm/docker-collectd-fritzbox

Stripdown of the image from approx. 200MB to approx. 70MB - volschin
https://github.com/volschin/docker-fritzcollectd
https://hub.docker.com/r/volschin/fritzcollectd