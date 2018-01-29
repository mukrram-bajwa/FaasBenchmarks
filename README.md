# Benchmarks for AWS Lambda and Google Cloud Functions
## Scripts 
Used to automate the benchmark.
1. Deployment
    Deployment script takes eight arguments and all are listed below:
    1. Cloud Functions type(```lambda/gcf```).
    2. Code storage type
        * For AWS lambda the possible values are s3 or local.
        * For GCF it is the full path to the code.
    3. For AWS Lambda it is the code location for Random function and for GCF it is trigger type.
    4. For AWS Lambda it is the code location for Hash function and for GCF it is trigger type.
    5. For AWS Lambda it is the code location for RSS function and for GCF it is trigger type.
    6. Number of years to run benchmark.
    7. Number of days to run benchmark.
    8. Number of minutes to run benchmark.
1. Startup
    1. Number of years to run benchmark.
    2. Number of days to run benchmark.
    3. Number of minutes to run benchmark.
    4. Time interval in minutes.
    5. File path to store metrices.
    6. Http endpoint to trigger Cloud Functions.
