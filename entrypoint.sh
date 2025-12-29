#!/bin/bash

DURATION=${1:-60}

echo "====== Docker Practice Container ======"
echo "Start time: $(date)"
echo "Duration: ${DURATION} seconds"
echo "========================================"

# Вывод информации о системе
echo "System Information:"
uname -a
echo "Available Memory: $(free -h | grep Mem)"
echo "CPU Info:"
nproc

# Генерируем логи и нагрузку на ресурсы
counter=0
while [ $counter -lt $DURATION ]; do
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Iteration $((counter + 1))/$DURATION"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Memory usage: $(ps aux | awk '{sum+=$6} END {print sum/1024 " MB"}')"
    
    # Имитация работы приложения
    sleep 5
    counter=$((counter + 5))
done

echo "====== Container Shutdown ======"
echo "End time: $(date)"
echo "Container completed successfully"
