#!/bin/bash

echo 1 > /proc/sys/ml/user_friendly_flag_set
echo 0 > /proc/sys/ml/total_legal_accesses_allocate
echo 0 > /proc/sys/ml/total_illegal_accesses_allocate
echo 0 > /proc/sys/ml/total_legal_accesses_free
echo 0 > /proc/sys/ml/total_illegal_accesses_free

mount -t tmpfs cgroup_root /sys/fs/cgroup
mkdir /sys/fs/cgroup/memory
mount -t cgroup none /sys/fs/cgroup/memory -o memory
mkdir /sys/fs/cgroup/memory/workload_0
mkdir /sys/fs/cgroup/memory/workload_1
mkdir /sys/fs/cgroup/memory/workload_2
mkdir /sys/fs/cgroup/memory/workload_3
echo -1 > /sys/fs/cgroup/memory/workload_0/memory.limit_in_bytes
echo -1 > /sys/fs/cgroup/memory/workload_1/memory.limit_in_bytes
echo -1 > /sys/fs/cgroup/memory/workload_2/memory.limit_in_bytes
echo -1 > /sys/fs/cgroup/memory/workload_3/memory.limit_in_bytes
echo 0 >/sys/module/printk/parameters/time
