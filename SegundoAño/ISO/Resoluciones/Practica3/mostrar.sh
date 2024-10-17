#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y ma;ana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
echo "Su directorio personal es: $HOME"
echo "Su contenido del directorio es $(ls ~)"
echo "El espacio libre del disco es $(df -h)"
echo "Ingrese su edad"
read edad
echo "Su edad es $edad"
