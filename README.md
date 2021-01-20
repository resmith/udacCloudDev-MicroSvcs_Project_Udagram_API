# udacCloudDev-MicroSvcs_Project_Udagram_API
Backend API for Udacity Cloud Developer Course - Project for Microservices to dockerize app &amp; utilize kubernetes for container orchestration

## Helpful

## Prerequisites
The below environment variables before executing the docker container.

    POSTGRES_USERNAME
    POSTGRES_PASSWORD
    POSTGRES_HOST
    POSTGRES_DB
    AWS_BUCKET
    AWS_REGION
    AWS_PROFILE
    JWT_SECRET
    URL

The environment variables are set locally using a set_env.sh file, and run from the terminal as:
```
. set_env.sh
```

sh can't be used because it will set the variables for the session (when set_env.sh is executed) and those variables will be gone after execution is completed. Running the set_env.sh as *.* will set the environment variables on the operating systems global workspace.

### Testing Db connection using Postgres SQL

This is the most direct way to test to ensure the Db is accessible when developing / testing locally.

1. Install Postgres / PSQL

2. Run the below command, updating it the variables with the appropriate values

*note* the password will be prompted for at execution time
psql \
   --host=udagramdb.xyxasdada.us-west-2.rds.amazonaws.com \
   --port=5432 \
   --username=udagramappuser \
   --password \
   --dbname=udagramdb 


### Testing using Postman
