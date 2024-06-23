@echo off

cd /d D:\T4Mat\LLM-Prop

set TRAIN_PATH="data\samples\textedge_prop_mp22_train.csv"
set VALID_PATH="data\samples\textedge_prop_mp22_valid.csv"
set TEST_PATH="data\samples\textedge_prop_mp22_test.csv"
set EPOCHS=5
set TASK_NAME="regression"
set PROPERTY="band_gap"

python llmprop_train.py ^
--train_data_path %TRAIN_PATH% ^
--valid_data_path %VALID_PATH% ^
--test_data_path %TEST_PATH% ^
--epochs %EPOCHS% ^
--task_name %TASK_NAME% ^
--property %PROPERTY%
