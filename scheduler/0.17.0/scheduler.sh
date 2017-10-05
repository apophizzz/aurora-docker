#!/bin/bash

AURORA_HOME=/usr/sbin

AURORA_FLAGS=(
 -http_port=${HTTP_PORT:-8080}
 -cluster_name=${CLUSTER_NAME:-aurora}
 -backup_dir=${BACKUP_DIR:-/tmp/aurora/backup}
 -mesos_master_address=${MESOS_MASTERS:?"MESOS_MASTERS must not be empty"}
 -serverset_path=${AURORA_ZK_PATH:-/aurora}
 -zk_endpoints=${ZK_ENDPOINTS:?"ZK_ENDPOINTS must not be empty"}
 -native_log_file_path=${NATIVE_LOG_FILE_PATH:-/var/lib/aurora/scheduler/db}
 -native_log_zk_group_path=${NATIVE_LOG_ZK_GROUP_PATH:-/tmp/aurora/replicated-log}
 -hostname=${HOSTNAME:?"HOSTNAME must not be empty"}
 -native_log_quorum_size=${NATIVE_LOG_QUORUM_SIZE:-1}
 -allowed_container_types=${ALLOWED_CONTAINER_TYPES:-MESOS,DOCKER}
 -thermos_executor_path=${THERMOS_EXECUTOR_PATH:-/usr/share/aurora/bin/thermos_executor.pex}
 -thermos_executor_cpu=${THERMOS_EXECUTOR_CPU:-0.25}
 -thermos_executor_ram=${THERMOS_EXECUTOR_RAM:-32MB}
 -allow_docker_parameters=true
)


exec "$AURORA_HOME/aurora-scheduler" "${AURORA_FLAGS[@]}"
