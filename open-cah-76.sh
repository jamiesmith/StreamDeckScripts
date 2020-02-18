#!/bin/sh

osascript chrome_new_window.scpt \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/infra#/logs/stream?flyoutOptions=(flyoutId:!n,flyoutVisibility:hidden,surroundingLogsId:!n)&logPosition=(position:(tiebreaker:50498,time:1581314664726),streamLive:!f)" \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/infra#/logs/log-rate" \
    "http://localhost:5601/app/infra#/logs/log-categories" \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/infra#/logs/log-categories?autoRefresh=(interval:60000,isPaused:!f)&timeRange=(endTime:now,startTime:now-2w)" \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/infra#/logs/stream?flyoutOptions=(flyoutId:!n,flyoutVisibility:hidden,surroundingLogsId:!n)&logPosition=(position:(tiebreaker:50495,time:1581290899166),streamLive:!f)" \
    "http://localhost:5601/app/infra#/logs/log-categories" \
    "http://localhost:5601/app/infra#/logs/stream?flyoutOptions=(flyoutId:!n,flyoutVisibility:hidden,surroundingLogsId:!n)&logFilter=(expression:'',kind:kuery)&logPosition=(position:(tiebreaker:2947079,time:1581355572055),streamLive:!f)&logTextview=(textScale:medium,wrap:!f)" \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/infra#/logs/log-categories?autoRefresh=(interval:60000,isPaused:!f)&timeRange=(endTime:now,startTime:now-2w)" \
    "https://5de1ea60ae2248558a27cbdb9252864d.us-central1.gcp.foundit.no:9243/app/ml#/explorer?_a=(mlExplorerFilter:(),mlExplorerSwimlane:(viewByFieldName:event.dataset))&_g=(ml:(jobIds:!(kibana-logs-ui-default-default-log-entry-categories-count)),refreshInterval:(pause:!t,value:0),time:(from:'2020-01-27T18:30:37.923Z',to:'2020-02-10T18:30:37.924Z'))" 


