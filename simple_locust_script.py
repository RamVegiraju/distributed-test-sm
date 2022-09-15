import time
import boto3
from botocore.config import Config
import json
from locust import task, events
from locust.contrib.fasthttp import FastHttpUser


class BotoClient:
    def __init__(self):
        
        #Consider removing retry logic to get accurate picture of failure in locust
        config = Config(
                        retries = {
                        'max_attempts': 0,
                        'mode': 'standard'
                        }
                    )

        self.sagemaker_client = boto3.client('sagemaker-runtime',config=config)

        self.endpoint_name = "huggingface-pytorch-inference-2022-09-12-19-23-24-332"
        self.region = 'us-east-1'
        self.content_type = 'application/json'
        self.payload = '{"inputs": "I am super happy right now."}'

    def send(self):

        request_meta = {
            "request_type": "InvokeEndpoint",
            "name": "SageMaker",
            "start_time": time.time(),
            "response_length": 0,
            "response": None,
            "context": {},
            "exception": None,
        }
        start_perf_counter = time.perf_counter()
   
        try:
            response = self.sagemaker_client.invoke_endpoint(
                EndpointName=self.endpoint_name,
                Body=self.payload,
                ContentType=self.content_type
            )
            response_body = response["Body"].read()

        except Exception as e:
            request_meta['exception'] = e

        request_meta["response_time"] = (time.perf_counter() - start_perf_counter) * 1000

        events.request.fire(**request_meta)

class BotoUser(FastHttpUser):
    abstract = True
    def __init__(self, env):
        super().__init__(env)
        self.client = BotoClient()

class MyUser(BotoUser):
    @task
    def send_request(self):

        self.client.send()
                               