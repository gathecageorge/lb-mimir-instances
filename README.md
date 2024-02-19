Allows setting up mimir in a docker swarm cluster and load balanced using nginx proxy

Also has helper services like grafana with mimir datasource setup and prometheus to scrape metrics and send to mimir

For sample metrics, prometheus is scraping itself aslo getting node-exporter and cadvisor metrics

Grafana has 2 data sources, mimir and prometheus in this case showing same metrics to show that prometheus is writing same metrics to mimir

