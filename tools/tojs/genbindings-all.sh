#!/bin/bash

PLUGIN_NAME=("chinamobile" "chinatelecom" "chinaunicom" "punchbox" "alipay" "flurry" "nd91" "umeng" "chinaunicom_online" "chinatelecom_online")

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# ... use paths relative to current directory
PLUGIN_ROOT="$DIR/../.."
CXX_GENERATOR_ROOT="$DIR/../../../tools/cxx-generator"
# Delete the output directory
if [ -d $PLUGIN_ROOT/jsbindings/auto ]; then
    echo "Delete the output directory."
    rm -r $PLUGIN_ROOT/jsbindings/auto
else
    echo "Output directory doesn't exist."
fi

check_return_value()
{
    if [ $? -ne 0 ]; then
        echo "*** genbindings plugin ( $1 ) jsbindings fails. ***"
        if [ -e $CXX_GENERATOR_ROOT/targets/spidermonkey/conversions.yaml.backup ]; then
            echo "Restoring conversions.yaml ..."
            mv $CXX_GENERATOR_ROOT/targets/spidermonkey/conversions.yaml.backup $CXX_GENERATOR_ROOT/targets/spidermonkey/conversions.yaml
        fi
        exit 1
    else
        echo "--- genbindings plugin ( $1 ) jsbindings succeed. ---"
    fi
}

./genbindings.sh "protocols"
check_return_value "protocols"

./genbindings-cocos2dx-others.sh
check_return_value "cocos2dx_others"

for i in "${PLUGIN_NAME[@]}"
do
    echo $i
    ./genbindings.sh $i
    check_return_value $i
done

echo "--- Generating all jsbindings glue codes for pluginx succeed. :) --- "
