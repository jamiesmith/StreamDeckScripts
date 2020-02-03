#!/bin/sh

CLOUD_URL="https://349c3afd55f34e7c8444b746cd65206e.us-central1.gcp.cloud.es.io:9243"

# More o11y
#
osascript chrome_new_window.scpt \
    "${CLOUD_URL}/app/canvas#/workpad/workpad-06c5871f-477a-4951-8631-b3df34e4336b/page/1?__fullscreen=true" \
    "${CLOUD_URL}/app/kibana#/home/tutorial_directory/logging" \
    "https://observe.eden.elstc.co/app/infra#/logs/stream?_g=()&flyoutOptions=(flyoutId:C-DVqW8BvYbYXls0YWpv,flyoutVisibility:hidden,surroundingLogsId:!n)&logPosition=(position:(tiebreaker:412454,time:1579102330565),streamLive:!f)&logTextview=(textScale:medium,wrap:!f))" \
    "${CLOUD_URL}/goto/dba83346afaadc7c23f4c9f15b85a662" \
    "${CLOUD_URL}/goto/4bcce57e06d4e5c7cc6cbc8a654c1e44" \
    "https://observe.eden.elstc.co/app/infra#/logs/log-rate?_g=()&autoRefresh=(interval:30000,isPaused:!f)&timeRange=(endTime:'2020-01-15T19:10:18.506Z',startTime:'2020-01-07T05:25:19.078Z')" \
    "${CLOUD_URL}/app/kibana#/management/elasticsearch/index_lifecycle_management/policies/edit/filebeat-7.5.0" \
    "${CLOUD_URL}/app/canvas#/workpad/workpad-06c5871f-477a-4951-8631-b3df34e4336b/page/2?__fullscreen=true" \
    "${CLOUD_URL}/app/kibana#/home?_g=()" \
    "${CLOUD_URL}/goto/333c176679da9577526168f691092c91" \
    "https://observe.eden.elstc.co/app/infra#/infrastructure/metrics-explorer?metricsExplorer=(chartOptions:(stack:!f,type:line,yAxisMode:fromZero),options:(aggregation:avg,groupBy:kubernetes.node.name,metrics:!((aggregation:avg,color:color0,field:kubernetes.pod.cpu.usage.limit.pct),(aggregation:avg,color:color1,field:kubernetes.pod.cpu.usage.node.pct))),timerange:(from:now-1h,interval:%3E%3D10s,to:now))&_g=()" \
    "https://observe.eden.elstc.co/app/infra#/infrastructure/inventory?_g=()&waffleOptions=(autoBounds:!t,boundsOverride:(max:1,min:0),customOptions:!(),groupBy:!((field:kubernetes.node.name)),metric:(type:cpu),nodeType:pod,view:map)" \
    "https://observe.eden.elstc.co/app/apm#/services/frontend/transactions?rangeFrom=now-24h&rangeTo=now&refreshPaused=true&refreshInterval=0&transactionType=request" \
    "https://observe.eden.elstc.co/app/apm#/services/frontend/transactions/view?rangeFrom=now-24h&rangeTo=now&refreshPaused=true&refreshInterval=0&traceId=55a2b5b3d6c7bf7343578673eca1a310&transactionId=55a2b5b3d6c7bf73&transactionName=placeOrderHandler&transactionType=request" \
    "https://observe.eden.elstc.co/app/kibana#/home" \
    "https://observe.eden.elstc.co/app/uptime#/" \
    "https://observe.eden.elstc.co/goto/5a4b33a7d12f8beae838b56d8ef5f02c" \
    "https://observe.eden.elstc.co/goto/ae2cb211af7dd472eeb7937e97737e5c" \
    "https://observe.eden.elstc.co/app/canvas#/workpad/workpad-9477d7af-d8f5-485b-8da6-aa6caf0ef19c/page/3"

mate open-logging-demo.md