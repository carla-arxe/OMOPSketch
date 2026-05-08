# ==============================================================================
# OHDSI Spanish Node - ARCHIVO DE CONFIGURACIÓN
# Complete los campos de este archivo antes de ejecutar el informe
# ==============================================================================

# 1. DETALLES DE LA BASE DE DATOS ----------------------------------------------
# Indique el nombre del centro y los datos de acceso
nombre_centro <- "NOMBRE_DE_SU_CENTRO"

db_name <- "nombre_base_datos"
db_host <- "host_servidor"
db_user <- "usuario"
db_pass <- "contraseña"
db_port <- 5432 # 5432 para PostgreSQL, 1433 para SQL Server

# 2. ESQUEMAS DE OMOP ----------------------------------------------------------
# cdm_schema: Donde están las tablas originales (person, drug_exposure, etc.)
# write_schema: Donde se pueden crear tablas temporales
cdm_schema   <- "nombre_esquema_cdm"
write_schema <- "nombre_esquema_escritura"

# 3. TIPO DE DRIVER ------------------------------------------------------------
# Descomente la línea según su base de datos:
driver_type <- "PostgreSQL" 
# driver_type <- "SQLServer"