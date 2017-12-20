#!/bin/bash

function showHelp() {
    echo Usage:
    echo ./mongo_update.sh --honeycomb "\$honeycombMongoIP" --file "\$updateFile.js"
    exit 1;
}

## Common arg parsing.
while [[ $# > 0 ]]
do
    key="$1"

    case $key in
        --honeycomb)
            HONEYCOMB="$2"
            shift # past argument
            ;;
        -f|--file)
            MONGO_UPDATE_FILE="$2"
            shift; # past argument
            ;;
        -h|--help)
            HELP=true
            shift # past argument
            ;;
        *)
            echo "[w] Invalid option: $1"
            ;;
    esac
    shift # past argument or value
done

if [ -z $HONEYCOMB ];
then
    # If nothing given, we will try to find the MongoDB database automatically from docker-compose.
    HONEYCOMB=`docker-compose exec honeycomb bash -c 'echo $MONGODB_PORT_27017_TCP_ADDR'`
fi

if [ -z $HONEYCOMB ] || [[ $HELP = true ]];
then
    showHelp;
fi

echo -e "Using mongo instance for honeycomb:\t ${HONEYCOMB}"

mongo $HONEYCOMB/honeycomb $MONGO_UPDATE_FILE

exit 0;
