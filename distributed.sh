#replace with your endpoint name
export SAGEMAKER_ENDPOINT=http://huggingface-pytorch-inference-2022-07-25-17-21-31-881
#replace with the locust script that you are testing, this is the locust_script with your previous payload
export SCRIPT=locust_script.py
#make sure you are in a virtual environment
#. ./venv/bin/activate
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --master --expect-workers=30 -u 10 -t 1m --csv results --headless &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
locust -f $SCRIPT -H $SAGEMAKER_ENDPOINT --worker --master-host=localhost &
