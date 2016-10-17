cd ~/vendor/splunkforwarder/bin/
./splunk start --accept-license
touch ~/$SPLUNK_LOG_FILE
./splunk add forward-server $SPLUNK_INDEXER -auth admin:changeme
./splunk add monitor ~/$SPLUNK_LOG_FILE  -auth admin:changeme
echo "goapi_jtier_splunk_agent_started" >> ~/splunk-log
