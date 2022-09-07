# distributed-test-sm
Distributed Locust Test SM

## Running Locust Tests

```
locust -f locust_script.py -u 5 --headless --host=http://huggingface-pytorch-inference-2022-09-07-18-38-58-883 --logfile=logfile.log --csv=locust.csv --csv-full-history --reset-stats

#remove headless for UI


# Distributed, increase users + workers (users as a multiple of workers)
./distributed.sh 
```
