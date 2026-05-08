# Caracterización Multicéntrica - OHDSI Spanish Node

Este proyecto contiene el protocolo para realizar la caracterización automática de datos OMOP CDM utilizando la librería **OmopSketch**.

El objetivo de este protocolo es generar un perfil demográfico y clínico de cada centro participante para asegurar la viabilidad de futuros estudios multicéntricos, manteniendo la privacidad de los datos.

## Pasos para los Partners

Para garantizar que todos los centros utilicen las mismas versiones de las librerías y evitar errores de compatibilidad, este proyecto utiliza *renv*.

### 1. Preparación del entorno

Descargue el contenido de este repositorio.

Abra el archivo **OmopSketch_SpanishNode.Rproj** con *RStudio*.

*R* detectará automáticamente el entorno. En la consola de *R*, ejecute:

    install.packages("renv") # Si no lo tiene instalado
    renv::restore()

*Esto instalará las versiones exactas de OmopSketch, CDMConnector y dplyr necesarias.*

### 2. Configuración de la conexión

Localice el archivo **config.R** en la carpeta raíz.

Edítelo con sus credenciales de base de datos (Host, Usuario, Contraseña, Esquemas) y el nombre de su centro.

### 3. Ejecución y envío

Abra el archivo **Report_Diagnostics.Rmd**.

Haga clic en el botón **"Knit"** en la parte superior de *RStudio*.
El proceso puede tardar más de 30 minutos dependiendo del volumen de su base de datos.

Una vez finalizado, obtendrá:

- *Report_Diagnostics.pdf*:Un informe en PDF para su revisión.

- *Results_SpanishNode_[nombre_centro]_[fecha]*: Este es el archivo que debe enviar al coordinador.

- *Revision_Detalles_[nombre_centro]_[fecha]*:  Un archivo con detalles técnicos adicionales para su propia auditoría.


Envíe el archivo *CSV* que empieza por **"Results_SpanishNode"** y el pdf **"Report_Diagnostics.pdf"** al coordinador del estudio.

## Seguridad y Privacidad

Este protocolo solo exporta datos agregados. En ningún caso se extraen datos a nivel de paciente.

El archivo *CSV* es legible con cualquier editor de texto para verificar el contenido antes de enviarlo.

Para soporte técnico, por favor contacte con el equipo de coordinación del **OHDSI Spanish Node**.
