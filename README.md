# Caracterización Multicéntrica - First Study-a-thon OHDSI Spain
## OHDSI Spanish Node

Este proyecto contiene el protocolo para realizar la caracterización automática de datos OMOP CDM utilizando la librería **OmopSketch**.

El objetivo de este protocolo es generar un perfil demográfico y clínico de cada centro participante para asegurar la viabilidad de futuros estudios multicéntricos, manteniendo la privacidad de los datos.

**Fecha:** Maig 2024

**Autores:** Carla Arxé, 

**Institución:** Hospital del Mar Research Institute

## Pasos para los centros participantes

Para garantizar que todos los centros utilicen las mismas versiones de las librerías y evitar errores de compatibilidad, este proyecto utiliza *renv*.

### 1. Preparación del entorno

Descargar el contenido de este repositorio.

Abrir el archivo **OmopSketch_SpanishNode.Rproj** con *RStudio*.

*R* detectará automáticamente el entorno. En la consola de *R*, ejecutar:

    install.packages("renv") # Si no lo tiene instalado
    renv::restore()

*Esto instalará las versiones de OmopSketch, CDMConnector y dplyr necesarias para el Study-a-thon*

### 2. Configuración de la conexión

Localizar el archivo **config.R** en la carpeta raíz.

Editarlo con las credenciales de base de datos (Host, Usuario, Contraseña, Esquemas) y el nombre de su centro.

Guardar el archivo.

### 3. Ejecución y envío

Abrir el archivo **Report_Diagnostics.Rmd**.

Hacer clic en el botón **"Knit"** en la parte superior de *RStudio*.
El proceso puede tardar más de 30 minutos dependiendo del volumen de su base de datos.

Una vez finalizado, se obtendrá:

- *Report_Diagnostics.pdf*:Un informe en PDF para su revisión.

- *Results_SpanishNode_[nombre_centro]_[fecha].csv*: Fichero con datos agregados.

Enviar el archivo *.csv* que empieza por **"Results_SpanishNode"** y el pdf **"Report_Diagnostics.pdf"** al coordinador del estudio.

## Seguridad y Privacidad

Este protocolo solo exporta datos agregados. En ningún caso se extraen datos a nivel de paciente.

El archivo *CSV* es legible con cualquier editor de texto para verificar el contenido antes de enviarlo.

Para soporte técnico, por favor contacte con el equipo de coordinación del **OHDSI Spanish Node:**  *carla.arxe@upf.edu* 
