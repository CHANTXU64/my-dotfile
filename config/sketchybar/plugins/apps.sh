#!/usr/bin/env bash

# $(yabai -m query --spaces --display | jq -r 'map(select(."has-focus" == true))[-1].type')

# CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
# CPU_INFO=$(ps -eo pcpu,user)
# CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
# CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")

# sketchybar -m --set  cpu_percent label=$(echo "$CPU_SYS $CPU_USER" | awk '{ printf("%01.0f\n", ($1 + $2)*100) }')%
