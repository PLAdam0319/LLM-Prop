#!/usr/bin/env bash
cd LLM-Prop/

TRAIN_PATH="/home/pxli/research/T4Mat/matbench_steels/10/steels_train_fs_10.csv"
VALID_PATH="/home/pxli/research/T4Mat/matbench_steels/10/steels_validation_fs_10.csv"
TEST_PATH="/home/pxli/research/T4Mat/matbench_steels/10/steels_test_fs_10.csv"
EPOCHS=400 # the default epochs is 100 to get the best performance
TASK_NAME="regression" # the task name can also be set to "classification"
BATCH_SIZE=8
PROPERTY_NAME="volume"
MAX_LEN=888

python llmprop_train.py \
--train_data_path $TRAIN_PATH \
--valid_data_path $VALID_PATH \
--test_data_path $TEST_PATH \
--epochs $EPOCHS \
--task_name $TASK_NAME \
--bs $BATCH_SIZE \
--property_name $PROPERTY_NAME \
--max_len $MAX_LEN


# @echo off

# cd /d D:\T4Mat\LLM-Prop

# set TRAIN_PATH="data\samples\textedge_prop_mp22_train.csv"
# set VALID_PATH="data\samples\textedge_prop_mp22_valid.csv"
# set TEST_PATH="data\samples\textedge_prop_mp22_test.csv"
# set EPOCHS=100
# set TASK_NAME="regression"
# set BATCH_SIZE=8
# set PROPERTY_NAME="volume"
# set MAX_LEN=888
# @REM 888

# python llmprop_train.py ^
# --train_data_path %TRAIN_PATH% ^
# --valid_data_path %VALID_PATH% ^
# --test_data_path %TEST_PATH% ^
# --epochs %EPOCHS% ^
# --task_name %TASK_NAME% ^
# --bs %BATCH_SIZE% ^
# --property_name %PROPERTY_NAME% ^
# --max_len %MAX_LEN%


