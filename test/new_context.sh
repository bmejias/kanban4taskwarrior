#!/bin/bash

source test/set_env.sh

current=`$TASKCO status`
context=`$APG -M CL -a 1 -n 1 -m 12 -x 12 -c -q`

echo $current > $CURRENT_CONTEX
echo $context > $TEST_CONTEX

$TASK
$TASKCO new $context
$TASKCO switch $context
echo "after switching"
$TASK
echo "switching back"
recover=`cat $CURRENT_CONTEX`
test_context=`cat $TEST_CONTEX`
$TASKCO switch $recover
cp -a $HOME/.task $HOME/.task_$test_context
rm -f $HOME/.taskrc_$test_context
rm -rf $HOME/.task/$test_context
