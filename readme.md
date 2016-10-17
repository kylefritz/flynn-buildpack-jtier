# Flynn/Heroku Buildpack for jTier app

1. Make jTier required directories
1. Install & Configure Splunk Agent
1. Install & Configure Java Metrics

## Environment Variables

    $ flynn env set SPLUNK_LOG_FILE=splunk-log 
    $ flynn env set SPLUNK_INDEXER=splunk-staging-indexers.snc1:9997
