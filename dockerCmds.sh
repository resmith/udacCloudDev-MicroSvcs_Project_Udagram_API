docker build -t theresmith/udagram_api:latest .

#
. set_env.sh
echo $POSTGRES_HOST
docker run -p 49160:8080 --env-file=./dockerEnv.txt theresmith/udagram_api

# For debugging
docker run -it --env-file=./dockerEnv.txt theresmith/udagram_api /bin/bash