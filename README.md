# Benchmarks for AWS Lambda and Google Cloud Functions
## Scripts 
Used to automate the benchmark.
### Deployment
    Deployment script takes eight arguments and all are listed below:
    1. Cloud Functions type(```lambda/gcf```).
    1. Code storage type:
    
        * For AWS lambda the possible values are s3 or local.
        * For GCF it is the full path to the code.
    
    1. For AWS Lambda it is the code location for Random function and for GCF it is trigger type.
    1. For AWS Lambda it is the code location for Hash function and for GCF it is trigger type.
    1. For AWS Lambda it is the code location for RSS function and for GCF it is trigger type.
    1. Number of years to run benchmark.
    1. Number of days to run benchmark.
    1. Number of minutes to run benchmark.
### Startup
    1. Number of years to run benchmark.
    1. Number of days to run benchmark.
    1. Number of minutes to run benchmark.
    1. Time interval in minutes.
    1. File path to store metrices.
    1. Http endpoint to trigger Cloud Functions.
