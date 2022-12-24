sketchybar -m --set ram_percentage label=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%01.0f\n", 100-$5"%") }')%
