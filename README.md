# aws_config
AWS CONFIG

Proyecto de Creación de Instancias EC2 en AWS
Este repositorio contiene un conjunto de archivos y scripts para la creación de instancias EC2 en AWS utilizando una configuración predefinida. Puedes utilizar estos archivos como punto de partida para desplegar instancias EC2 de manera rápida y sencilla.

Archivos del Proyecto
El proyecto se compone de los siguientes archivos y carpetas:

app: Esta carpeta puede contener el código de la aplicación que desees desplegar en las instancias EC2. Asegúrate de incluir aquí los archivos necesarios para tu aplicación.

index.js: Este archivo es un ejemplo de un archivo de entrada para la aplicación. Asegúrate de personalizarlo según las necesidades de tu proyecto.

config: En esta carpeta se encuentra el archivo de configuración de AWS.

aws_config.json: Un archivo de configuración que debe contener las credenciales de AWS necesarias para interactuar con la API de AWS. Asegúrate de completar este archivo con tus propias credenciales.
scripts: Esta carpeta contiene los scripts necesarios para crear instancias EC2.

Create-EC2-instances.sh: Un script que se encarga de crear instancias EC2 en base a la configuración definida en el archivo aws_config.json. Asegúrate de revisar y personalizar este script antes de su ejecución.
Uso
Asegúrate de tener instalado el cliente de línea de comandos de AWS (AWS CLI) y configurado con tus credenciales.

Personaliza el archivo aws_config.json en la carpeta config con tus propias credenciales y configuración de AWS.

Ejecuta el script Create-EC2-instances.sh en la carpeta scripts para crear instancias EC2 según la configuración proporcionada.
