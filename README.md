# Aurora in Docker


## Tags and Dockerfiles

 * __Aurora scheduler:__ <br/>
   `latest`, `0.17.0` [(0.17.0/Dockerfile)](https://github.com/apophis90/aurora-docker/blob/master/scheduler/0.17.0/Dockerfile)

 * __Aurora worker:__ <br/>
   `latest`, `0.17.0` [(0.17.0/Dockerfile)](https://github.com/apophis90/aurora-docker/blob/master/worker/0.17.0/Dockerfile)

 * __Aurora CLI:__ <br/>
   `latest`, `0.17.0` [(0.17.0/Dockerfile)](https://github.com/apophis90/aurora-docker/blob/master/cli/0.17.0/Dockerfile)

<br/>

## What is Aurora?

> Apache Aurora is a service scheduler that runs on top of Apache Mesos, enabling you to run long-running services, cron jobs, and ad-hoc jobs that take advantage of Apache Mesos’ scalability, fault-tolerance, and resource isolation. <br/>
\- [Aurora documentation](https://aurora.apache.org/documentation/latest/)

Aurora is essentially made up of four components:

#### Aurora scheduler
The scheduler component interacts with the leading Mesos master to create, update and
delete tasks according to job definitions.

#### Aurora client
The Aurora client is a command line tool through with users communicate with the
scheduler.

#### Thermos executor
The Thermos executor is a custom executor which is responsible for starting the actual task processes on Mesos agents. Besides, it performs health checking of tasks and registers them in ZooKeeper for service discovery.

#### Thermos observer    
The Thermos observer provides an interface for browsing task sandbox directories from the Aurora scheduler UI.

<br/>

## How to use these Docker images

### Aurora scheduler

### Aurora worker

### Aurora CLI

<br/>

## License

Aurora is published under the Apache License 2.0 ([view license information](https://github.com/apache/aurora/blob/master/LICENSE)).
