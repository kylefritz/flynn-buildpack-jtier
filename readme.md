# Splunk Universal Forwarder Heroku Buildpack

1. Install Splunk Universal Forwarder

## what to do

  #!/bin/sh

  export BYE=kyle

  export PATH=$PATH:/app/vendor/splunkforwarder/bin
  export SPLUNK_HOME=vendor/splunkforwarder

  SPLUNK_LOG_FILE=splunk-log 
  SPLUNK_INDEXER=splunk-staging-indexers.snc1:9997

  cd /app/vendor/splunkforwarder/bin/
  ./splunk start --accept-license
  touch /app/$SPLUNK_LOG_FILE
  ./splunk add forward-server $SPLUNK_INDEXER -auth admin:changeme
  ./splunk add monitor /app/$SPLUNK_LOG_FILE  -auth admin:changeme
  echo "goapi_jtier_splunk_agent_started" >> /app/splunk-log

