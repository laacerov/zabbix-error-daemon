#!/bin/bash

# Obtener la fecha actual en el formato 'Jun 19'
fecha_actual=$(date '+%b %d')
year=$(date '+%y')
# Definir la ruta al archivo de log
archivo_log="/home/luis_acero/log_wake-up_daemon.log"

# Buscar las entradas del log que coincidan con la fecha actual y contar las coincidencias
conteo=$(grep -a "$fecha_actual" "$archivo_log" 2>/dev/null | grep 'fregado' | grep "$year" | wc -l)

# Imprimir el resultado
echo $conteo
