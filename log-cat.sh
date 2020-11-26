#!/bin/sh

osascript chrome_new_window.scpt \
	  "https://d6efb7e5d4a14a5f939db25fd309f4c5.us-west1.gcp.cloud.es.io:9243/app/logs/log-categories?autoRefresh=(interval:60000,isPaused:!f)&timeRange=(endTime:now,startTime:now-2M)" \
	  "https://d6efb7e5d4a14a5f939db25fd309f4c5.us-west1.gcp.cloud.es.io:9243/app/logs/log-categories?autoRefresh=(interval:60000,isPaused:!f)&timeRange=(startTime:now-6w,endTime:now-3w)" \
	  "https://d6efb7e5d4a14a5f939db25fd309f4c5.us-west1.gcp.cloud.es.io:9243/app/logs/log-categories?autoRefresh=(interval:60000,isPaused:!t)&timeRange=(startTime:now-10w,endTime:now-2w)" \
	  "https://d6efb7e5d4a14a5f939db25fd309f4c5.us-west1.gcp.cloud.es.io:9243/app/logs/log-categories?autoRefresh=(interval:60000,isPaused:!t)&timeRange=(startTime:now-8w,endTime:now-1w)" \
	  "https://d6efb7e5d4a14a5f939db25fd309f4c5.us-west1.gcp.cloud.es.io:9243/app/logs/log-categories?autoRefresh=(interval:60000,isPaused:!t)&timeRange=(endTime:now%2Fw,startTime:now%2Fw)"
