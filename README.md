# Prubas Software Development buscador oca

## Descripción

Buscador Oca para prubas software development, es un conjunto de compilados y binarios de python, nestjs y reactjs.

## Modulo Centralizador ETL
```
centralizador/ # modulo centralizador ETL
├── src/       # carpetas donde se almacenan y se leen los datos en base al query_sources.json y query_sources_one.json
│   ├── log    # logs de proceso
│   │   ├── errors.log
│   │   ├── procesados_bpoSystem.json
│   │   ├── procesados_muestra_oca_tmk.json
│   │   ├── procesados_reclutador.json
│   ├── └── procesados_reclutador_tmk.json
│   ├── querys # archivos de consultas
│   │   ├── a2.sql
│   │   ├── bpoSystem.sql
│   │   ├── muestra_oca_tmk.sql
│   └── └── reclutador.sql
├── .env # archivo de variables de entorno
├── centralizador.exe # ejecutable de binario de python windows
├── centralizador.exe # ejecutable de binario de python linux
├── query_sources_one.json # archivo de configuracion de consultas (unica sincronizacion)
├── query_sources.json # archivo de configuracion de consultas (sincronizacion por fechas)
├── README.md # instrucciones de uso
├── run-dates.bat # script de ejecucion de la sincronizacion por fechas para windows
└── run-single.bat # script de ejecucion de la sincronizacion unica para windows

```

### Ejecución

1. Configurar los archivos query_sources.json y query_sources_one.json, en ellos se encuentran configuraciones de rutas de logs y de querys a ejecutar, acompañados de las credenciales de conexión a las bases de datos.
2. Para ejecutar la sincronización única, 
    - windows: ejecutar/Modificar el archivo run-single.bat este se encargará de ejecutar el archivo centralizador.exe con los parámetros necesarios.
    - para distribuciones linux: ejecute el comando, con los parámetros necesarios
    ``` bash
        ./centralizador single --chunk_size=1000 --max_workers=6
    ```  

3. Para ejecutar la sincronización por fechas
    para windows: ejecutar/Modificar el archivo run-dates.bat este se encargará de ejecutar el archivo centralizador.exe con los parámetros necesarios.
    para distribuciones linux: ejecute el comando, con los parámetros necesarios
    ``` bash
        ./centralizador dates --start=2023-01-01 --end=2023-12-31 --max_workers=6
    ```

## Modulo api-rest
```
api-rest/ # modulo api-rest
├── dist/       # carpeta de compilación de la api-rest
├── .env # archivo de variables de entorno 
└── package.json # archivo de configuracion de la api-rest
```

### Ejecución
Se recomienda utilizar pm2 para ejecución de la api-rest.

1. colocarce en la carpeta de la api-rest 
    * comando:
    ``` bash
        cd api-rest
    ```
2. el archivo .env, con los parametros necesarios para la conexión a la base de datos mongodb.

3. Instalar las dependencias de la api-rest:
    * Comando de instalar las dependencias de la api-rest:
    ``` bash
        npm install
    ```
4. Para la instalacion y ejecucion de la api-rest utilizando pm2:
    * Comando de instalar pm2: 
    ``` bash
        npm install pm2 -g
    ```
    * Comando de ejecución de la api-rest:
    ``` bash
        pm2 start dist/main.js --name buscador-oca-api-rest
    ```
    * Comando de parar detener la api-rest:
    ``` bash
        pm2 stop buscador-oca-api-rest
    ```
    * Comando de reiniciar la api-rest:
    ``` bash
        pm2 restart buscador-oca-api-rest
    ```
    
## Modulo web
```
web/ # modulo api-rest
├── assets/       # carpeta de compilación de web react
├── icono.png # icono de la aplicación
└── index.html # archivo html de la aplicación
```
la carpeta web contiene el compilado del código fuente de react.

Para poder visualizar la aplicación se recomienda la utilización de un servidor web local, para ello se puede utilizar apache o nginx.

### Ejecución

1. copiar el contenido de la carpeta web dentro de la carpeta correspondiente según el servidor web que se utiliza. Ejemplo: copiar el contenido de la carpeta web en la carpeta wwwroot de apache.

## Nota
por defecto la conexión al api rest esta configurado para consumir en el puerto 3000, tanto la ejecución del api-rest con pm2 y el consumo del web están configurados para utilizar este puerto por defecto por lo cual se recomienda tenerlo en cuenta al momento de configurar el servidor web. O si se necesitan utilizar otro puerto, se debe solicitar la modificación para generar nuevos compilados.