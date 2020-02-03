#!/bin/sh

osascript chrome_new_window.scpt \
    "https://petclinic.eden.elstc.co/" \
    "https://ecommerce-demo.swiftype.info/search?q=shoes&size=n_20_n" \
    "https://storage.googleapis.com/sa-eden-prod/images/infra/IMG_0115.png"  \
    "https://infra-kibana.eden.elstc.co/app/kibana#/dashboard/APM-Infra-inbox-Dashboard-email-00?_g=()&_a=(description:'',filters:!(),fullScreenMode:!f,options:(darkTheme:!f,hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:52,i:'1',w:24,x:24,y:0),id:APM-Infra-inbox-email-00,panelIndex:'1',type:visualization,version:'7.3.0'),(embeddableConfig:(),gridData:(h:52,i:'2',w:24,x:0,y:0),id:APM-Infra-inbox-inbox-00,panelIndex:'2',type:visualization,version:'7.3.0')),query:(language:lucene,query:''),timeRestore:!f,title:APM-Infra-inbox-Dashboard-email-00,viewMode:view)"  \
    "https://infra-kibana.eden.elstc.co/app/ml#/explorer?_g=(ml:(jobIds:!(petclinic-node-request-high_mean_response_time,petclinic-spring-request-high_mean_response_time)),refreshInterval:(pause:!t,value:0),time:(from:'2018-11-26T19:00:00.000Z',mode:absolute,to:'2018-11-27T07:59:59.999Z'))&_a=(filters:!(),mlCheckboxShowCharts:(showCharts:!t),mlExplorerFilter:(),mlExplorerSwimlane:(viewBy:job,viewByFieldName:'job%20ID'),mlSelectInterval:(display:Auto,val:auto),mlSelectLimit:(display:'10',val:10),mlSelectSeverity:(color:%23d2e9f7,display:warning,val:0),mlShowCharts:!t,query:(query_string:(analyze_wildcard:!t,query:'*')))"  \
    "https://infra-kibana.eden.elstc.co/app/apm#/petclinic-node/transactions?rangeFrom=2018-11-26T23:15:00.000Z&rangeTo=2018-11-27T00:47:00.000Z&_g=()"  \
    "https://infra-kibana.eden.elstc.co/app/kibana#/dashboard/54a14c00-ed9f-11e8-965b-b34e994cf865?_g=(time:(from:'2018-11-26T19:00:00.000Z',mode:absolute,to:'2018-11-27T05:02:00.000Z'))&_a=(filters:!(),query:(language:lucene,query:''))"  \
    "https://infra-kibana.eden.elstc.co/app/infra#/infrastructure/inventory?_g=()&waffleFilter=(expression:'',kind:kuery)&waffleOptions=(autoBounds:!t,boundsOverride:(max:1,min:0),customOptions:!(),groupBy:!(),metric:(type:cpu),nodeType:host,view:map)&waffleTime=(autoReload:!f,time:1543276800000)"
