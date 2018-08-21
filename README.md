# Docker Cronie

Docker image builded to run light cron scheduler.

## Folders
- /jobs/1min : Cron tasks launched every minutes
- /jobs/5min : Cron tasks launched every 5 minuts
- /jobs/15min : Cron tasks launched every 15 minutes
- /jobs/hourly : Cron tasks launched every hours
- /jobs/daily : Cron tasks launched every days at 12:00PM
- /jobs/weekly : Cron tasks launched every Monday at 12:00PM
- /jobs/monthly : Cron tasks launched every month at 1st at 12:00PM

## Run container
### Docker Compose
You could use provided docker-compose.yml file by directly run command :
```bash
docker-compose up
```

### Direct run
You could run container by the following command :
```bash
docker run \
        -d \
        --name cronie \
        -v ${PWD}/jobs/1min:/jobs/1min \
        -v ${PWD}/jobs/5min:/jobs/5min \
        -v ${PWD}/jobs/15min:/jobs/15min \
        -v ${PWD}/jobs/hourly:/jobs/hourly \
        -v ${PWD}/jobs/daily:/jobs/daily \
        -v ${PWD}/jobs/weekly:/jobs/weekly \
        -v ${PWD}/jobs/monthly:/jobs/monthly \
        docker.fricouv.eu/vfricou/cronie:latest
```



# Supported tags and respective `Dockerfile` links

- [`latest` (*latest/Dockerfile*)](https://github.com/SillyWhale/cronie/blob/master/Dockerfile)

# Quick reference

- **Where to file issues**:  
  [https://github.com/SillyWhale/cronie/issues](https://github.com/SillyWhale/cronie/issues)

- **Maintained by**:  
  [SillyWhale](https://github.com/SillyWhale/cronie)

- **Source of this description**:  
  [docs repo's directory](https://github.com/SillyWhale/images-doc)

- **Supported Docker versions**:  
  [the latest release](https://github.com/docker/docker-ce/releases/latest)

# What is Cron ?

Cron is a simple job scheduler.

# How to use this image

## Usage

Use like you would any other base image:

```bash
docker run \
        -d \
        --name cronie \
        -v ${PWD}/jobs/1min:/jobs/1min \
        -v ${PWD}/jobs/5min:/jobs/5min \
        -v ${PWD}/jobs/15min:/jobs/15min \
        -v ${PWD}/jobs/hourly:/jobs/hourly \
        -v ${PWD}/jobs/daily:/jobs/daily \
        -v ${PWD}/jobs/weekly:/jobs/weekly \
        -v ${PWD}/jobs/monthly:/jobs/monthly \
        docker.fricouv.eu/vfricou/cronie:latest
```

or via docker-compose :

```bash
docker-compose up -d
```

This yields us a virtual image size of about 6MB image.

## Documentation

This image is well documented. [Check out the documentation](http://docs.sillywhale.wtf/cronie/).