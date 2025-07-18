
--**--
SELECT COUNT(*) FROM abogados WHERE dpi IS NOT NULL;
SELECT 
	dpi,
    nit,
    igss,
    irtra,
    null as cedula,
    null as pasaporte,
    nombre1 as primer_nombre,
    nombre2 as segundo_nombre,
    nombre3 as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    apellido3 as apellido_casada,
    null as nombre_completo,
    fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null as genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:', IFNULL(municipio, ''),
        '~departamento:', IFNULL(departamento, ''),
        '~colonia:', IFNULL(colonia, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, ''),        
        '|numero:', IFNULL(telefono2, '')
	) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(email, ''), 
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''), 
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM abogados
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM arco WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    nit,
    igss,
    null AS irtra,
    Cedula AS cedula,
    pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    null AS nombre_completo,
    FechaNacimiento AS fecha_nacimiento,
    estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    padre,
    madre,
    Conyugue AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''), 
        '~departamento:', IFNULL(lugar_nacimiento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, ''),
        '~tipo:~estado:'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''), 
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM arco
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM boleto2020 WHERE CUI IS NOT NULL;
SELECT 
    CAST(CUI AS CHAR) AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    Nombre1 AS primer_nombre,
    Nombre2 AS segundo_nombre,
    Nombre3 AS tercer_nombre,
    Apellido1 AS primer_apellido,
    Apellido2 AS segundo_apellido,
    Apellidocasada AS apellido_casada,
    null AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(CORREO, ''), 
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(EMPRESA, ''), 
        '~salario:', IFNULL(IngresoMensualTotal, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM boleto2020
WHERE CUI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM dbo_movi2019 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    nombre AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '|direccion_completa:', IFNULL(direccion1, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM dbo_movi2019
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM detenidos WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    nombre AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(FOTO, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    CONCAT(
        'documento:',      
        IF(feha IS NOT NULL, CONCAT('~fecha:', DATE(feha)), ''),
        '~lugar:', IFNULL(carcel, ''), 
        '~motivo:', IFNULL(MOTIVO, ''), 
        '~autoridad:', IFNULL(por, ''), 
        '~observaciones:', IFNULL(OBSERVACION, '')
    ) AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM detenidos
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM distelsa WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    SUBSTRING_INDEX(Nombre_cliente, ' ', 1) AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    Nombre_cliente AS nombre_completo,
    CASE 
        WHEN Fec_Nacimiento like '____-__-__' OR Fec_Nacimiento like '__/__/____'
        THEN STR_TO_DATE(Fec_Nacimiento, '%Y-%m-%d')
        ELSE NULL
    END AS fecha_nacimiento,
    Estado_Civil AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'MASCULINO' THEN 'M'
        WHEN UPPER(sexo) = 'FEMENINO' THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(Direccion_Residencia, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELS, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(Empresa, ''),
        '~cargo:', IFNULL(Cargo, ''),
        '~salario:', IFNULL(sueldo, ''),
        '~direccion:', IFNULL(Direccion_Laboral, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM distelsa
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM empagua WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    nombre AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(SEXO) = 'M' THEN 'M'
        WHEN UPPER(SEXO) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~colonia:', IFNULL(COLONIA, ''),
        '~zona:', IFNULL(ZONA, ''),
        '~calle:', IFNULL(CALLEN, ''),
        '~avenida:', IFNULL(AVENIDAN, '')
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM empagua
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM formato_bases WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    IGSS AS igss,
    null AS irtra,
    CEDULA AS cedula,
    PASAPORTE AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE_COMPLETO AS nombre_completo,
    CASE 
        WHEN Fecha_Nacimiento = '0000-00-00' OR Fecha_Nacimiento = '0000-00-00 00:00:00' THEN NULL
        ELSE Fecha_Nacimiento
    END AS fecha_nacimiento,
    ESTADO_CIVIL AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(Direccion, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(Celular, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(Casa, ''),
        '~tipo:casa',
        '|numero:', IFNULL(telefono_1, ''),
        '|numero:', IFNULL(telefono_2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(Correo_Electronico, ''),
        '~tipo:personal',
        '|correo:', IFNULL(CORREO_ELECTRONICO1, ''),
        '|correo:', IFNULL(CORREO_ELECTRONICO2, '')
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''), 
        '|url~', IFNULL(FOTO1, ''), 
        '|url~', IFNULL(FOTO2, ''), 
        '|url~', IFNULL(FOTO3, '')
    ) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(EMPRESA, ''), 
        '~cargo:', IFNULL(PUESTO, ''),
        '~direccion:', IFNULL(Direccion_Trabajo, ''),
        '|razon_social:', IFNULL(LUGAR_DE_TRABAJO, ''), 
        '~cargo:', IFNULL(Profecion_u_Oficio, ''),
        '~direccion:', IFNULL(Direccion_Trabajo, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(LICENCIA, '')
    ) AS licencias_srt,
    CONCAT(
        'marca: SIN REGISTRO',
        '~placa:', IFNULL(VEHICULO, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM formato_bases
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM gallo WHERE Identificacion IS NOT NULL;
SELECT 
    CAST(Identificacion AS CHAR) AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    NombreCliente AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DireccionCompleta, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(Cel1, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(Cel2, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(TelCasa, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(TelTrabajo, ''),
        '~tipo:trabajo'
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(email, ''), '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:gallo',
        '~cargo:', IFNULL(profesion2, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    CONCAT(
        'telefono:', IFNULL(TelRef1, ''), 
        '~nombre:', CONCAT(IFNULL(primernombreRef1, ''), ' ', IFNULL(segundoNombreRef1, ''), ' ', IFNULL(PrimerApellidoRef1, ''), ' ', IFNULL(segundoApellidoRef1, '')),
        '|telefono:', IFNULL(TelRef2, ''), 
        '~nombre:', CONCAT(IFNULL(primernombreRef2, ''), ' ', IFNULL(segundoNombreRef2, ''), ' ', IFNULL(PrimerApellidoRef2, ''), ' ', IFNULL(segundoApellidoRef2, '')),
        '|telefono:', IFNULL(TelRef3, ''), 
        '~nombre:', CONCAT(IFNULL(primernombreRef3, ''), ' ', IFNULL(segundoNombreRef3, ''), ' ', IFNULL(PrimerApellidoRef3, ''), ' ', IFNULL(segundoApellidoRef3, ''))
    ) AS referencias_str,
    null as fecha_ingreso_oca
FROM gallo
WHERE Identificacion IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM gtpospago WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    SUBSTRING_INDEX(SUBSTRING_INDEX(NOMBRE, ' ', 1), ' ', 1) AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    CONCAT(NOMBRE, ' ', APELLIDO1, ' ', apellido2) AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(NUM_CELULAR, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(TEF_CLIENTE1, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(EMAIL, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM gtpospago
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM guatecomp WHERE dpi IS NOT NULL;
SELECT 
    CAST(dpi AS CHAR) AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    SUBSTRING_INDEX(nombre, ' ', 1) AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    nombre AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombre_comercial, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM guatecomp
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM igss2015 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    ESTADOCIVIL AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(SEXO) = 'M' THEN 'M'
        WHEN UPPER(SEXO) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONOCASA, ''),
        '~tipo:casa'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(NOMBREEMPRESA, ''), 
        '~direccion:', IFNULL(DIRECCIONPATRONO, ''),
        '~salario:', IFNULL(SALARIOPROMEDIOMENSUAL, ''),
        IF(FECHAINICIOLABORES IS NOT NULL, CONCAT('~fecha_inicio:', DATE(FECHAINICIOLABORES)), '')           
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM igss2015
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM igss2015_1 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    NIT AS nit,
    igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    ESTADOCIVIL AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(SEXO) = 'M' THEN 'M'
        WHEN UPPER(SEXO) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONOCASA, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(TElPATRONO, ''), 
        '~tipo:trabajo',
        '|numero:', IFNULL(TELEMPRESA, ''),
        '~tipo:empresa'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT('url~', IFNULL(firma, '')) AS firmas_str,
	CONCAT(
        'razon_social:', IFNULL(NOMBREEMPRESA, ''), 
        '~direccion:', IFNULL(DIRECCIONPATRONO, ''),
        '~salario:', IFNULL(SALARIOPROMEDIOMENSUAL, ''),
        IF(FECHAINICIOLABORES IS NOT NULL, CONCAT('~fecha_inicio:', DATE(FECHAINICIOLABORES)), '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM igss2015_1
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM irtra_afiliados WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    igss,
    NUAFIG AS irtra,
    null AS cedula,
    PASAPORTE AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    null AS nombre_completo,
    FECNAC AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN SEXO = 1 THEN 'M'
        WHEN SEXO = 2 THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    conyugue,
     CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:', IFNULL(municipio, ''),
        '~departamento:', IFNULL(departamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, ''), 
        '~tipo:principal',
        '|numero:', IFNULL(telefono1, ''), 
        '~tipo:alternativo',
        '|numero:', IFNULL(telefonoref, ''), 
        '~tipo:referencia:'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(FOTO, ''),
        '|url~', IFNULL(FOTO1, ''),
        '|url~', IFNULL(FOTO2, ''),
        '|url~', IFNULL(FOTO3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(FIRMA, '')
    ) AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(patrono, ''), 
        '~cargo:', IFNULL(ocupacion, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(LICENCIA, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    CONCAT(
		'dpi:', IFNULL(DPIP, ''),
        '~primer_nombre:', IFNULL(nombre1p, ''),
        '~segundo_nombre:', IFNULL(nombre2p, ''),
        '~tercer_nombre:', IFNULL(nombre3p, ''),
        '~primer_apellido:', IFNULL(apellido1p, ''),
        '~segundo_apellido:', IFNULL(apellido2p, ''),
        '~tipo_relacion:padre',
        '|dpi:', IFNULL(DPIM, ''),
        '~primer_nombre:', IFNULL(nombre1m, ''),
        '~segundo_nombre:', IFNULL(nombre2m, ''),
        '~tercer_nombre:', IFNULL(nombre3m, ''),
        '~primer_apellido:', IFNULL(apellido1m, ''),
        '~segundo_apellido:', IFNULL(apellido2m, ''),
        '~tipo_relacion:madre',
        '|dpi:', IFNULL(DPIC, ''),
        '~primer_nombre:', IFNULL(nombre1c, ''),
        '~segundo_nombre:', IFNULL(nombre2c, ''),
        '~tercer_nombre:', IFNULL(nombre3c, ''),
        '~primer_apellido:', IFNULL(apellido1c, ''),
        '~segundo_apellido:', IFNULL(apellido2c, ''),
        '~tercer_apellido:', IFNULL(apellido3c, ''),
        '~nombre_completo:', IFNULL(conyugue, ''),
        '~tipo_relacion:conyugue'
    ) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM irtra_afiliados
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM licencia WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    igss,
    irtra,
    num_cedula_lic AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    null AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    TIPOSANGRE AS grupo_sanguino,
    CASE 
        WHEN sexo_per = 1 THEN 'F'
        WHEN sexo_per = 2 THEN 'M'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    CONCAT(IFNULL(nombre_padre, ''), ' ', IFNULL(ape1padre, ''), ' ', IFNULL(ape2padre, '')) AS padre,
    CONCAT(IFNULL(nombre_madre, ''), ' ', IFNULL(ape1madre, ''), ' ', IFNULL(ape2madre, '')) AS madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~colonia:', IFNULL(col, ''),
        '~zona:', IFNULL(zona, ''),
        '~calle:', IFNULL(calle, ''),
        '~avenida:', IFNULL(avenida, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono_per, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(TELEFONO, ''),
        '|numero:', IFNULL(casotel, ''), 
        '~tipo:casa'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT('url~', IFNULL(firma, '')) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(num_lic, ''), 
        '~tipo:', IFNULL(id_tipo_lic, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM licencia
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM lineamovi2019 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    null AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, ''),
        '|numero:', IFNULL(TEF_CLIENTE1, ''),
        '|numero:', IFNULL(TEF_CLIENTE2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(NOM_EMAIL, ''),
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    CONCAT(
        'telefono:', IFNULL(TEF_REFER1, ''), 
        '~nombre:', IFNULL(NOM_REFER1, ''),
        '|telefono:', IFNULL(TEF_REFER2, ''), 
        '~nombre:', IFNULL(NOM_REFER2, '')
    ) AS referencias_str,
    null as fecha_ingreso_oca
FROM lineamovi2019
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM mineduc2015 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    null AS nit,
    IGSS AS igss,
    null AS irtra,
    cedula,
    pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    null AS apellido_casada,
    nombre AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    PADRE AS padre,
    MADRE AS madre,
    CONYUGUE AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:', IFNULL(Municipio, ''),
        '~departamento:', IFNULL(Departamento, ''),
        '~colonia:', IFNULL(COLONIA, ''),
        '~zona:', IFNULL(ZONA, ''),
        '~calle:~avenida:'
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(Telefono, ''), '~tipo:~estado:'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(establecimiento, ''),
        '~cargo:', IFNULL(Puesto, ''),
        '~salario:'
    ) AS trabajos_str,
    null AS detenciones_str,
    null estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM mineduc2015
WHERE dpi IS NOT NULL
GROUP BY dpi, nit, igss, irtra, cedula, pasaporte, primer_nombre, segundo_nombre, tercer_nombre, primer_apellido,
    segundo_apellido, apellido_casada, nombre_completo, fecha_nacimiento, estado_civil, grupo_sanguino, genero, 
    nacionalidad, discapacidad, padre, madre, conyugue, direcciones_srt, telefonos_str, correos_str, fotos_str, 
    firmas_str, trabajos_str, detenciones_str, estudios_str, licencias_srt, vehiculos_srt, relaciones_str, tipo_cliente
LIMIT {limit} OFFSET {offset};

--**--

SELECT COUNT(*) FROM nit2016 WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    -- Extraer primer nombre del campo nombre
    SUBSTRING_INDEX(nombre, ' ', 1) AS primer_nombre,
    -- Intentar extraer segundo nombre
    CASE 
        WHEN LENGTH(nombre) - LENGTH(REPLACE(nombre, ' ', '')) >= 2 
        THEN SUBSTRING_INDEX(SUBSTRING_INDEX(nombre, ' ', 2), ' ', -1)
        ELSE NULL
    END AS segundo_nombre,
    null AS tercer_nombre,
    -- Intentar extraer apellidos (asumiendo que los últimos dos segmentos son apellidos)
    CASE 
        WHEN LENGTH(nombre) - LENGTH(REPLACE(nombre, ' ', '')) >= 3
        THEN SUBSTRING_INDEX(SUBSTRING_INDEX(nombre, ' ', -2), ' ', 1)
        ELSE NULL
    END AS primer_apellido,
    CASE 
        WHEN LENGTH(nombre) - LENGTH(REPLACE(nombre, ' ', '')) >= 3
        THEN SUBSTRING_INDEX(nombre, ' ', -1)
        ELSE NULL
    END AS segundo_apellido,
    null AS apellido_casada,
    nombre AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    nombre_padre AS padre,
    nombre_madre AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:~departamento:~colonia:~zona:~calle:~avenida:'
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT('url~', IFNULL(foto, '')) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM nit2016
WHERE dpi IS NOT NULL
GROUP BY dpi, nit, igss, irtra, cedula, pasaporte, primer_nombre, segundo_nombre, tercer_nombre, primer_apellido,
    segundo_apellido, apellido_casada, nombre_completo, fecha_nacimiento, estado_civil, grupo_sanguino, genero, 
    nacionalidad, discapacidad, padre, madre, conyugue, direcciones_srt, telefonos_str, correos_str, fotos_str, 
    firmas_str, trabajos_str, detenciones_str, estudios_str, licencias_srt, vehiculos_srt, relaciones_str, tipo_cliente
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM nit2021 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '|numero:', IFNULL(comtelefono, ''), 
        '|numero:', IFNULL(tel1, ''), 
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM nit2021
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--

SELECT COUNT(*) FROM nit22021 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(comtelefono, ''),
        '|numero:', IFNULL(tel1, ''),
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    CONCAT ( 
		'dpi:', IFNULL(cuia, ''),
		'~primer_nombre:', IFNULL(nombre1a, ''),
		'~segundo_nombre:', IFNULL(nombre2a, ''),
		'~tercer_nombre:', IFNULL(nombre3a, ''),
		'~primer_apellido:', IFNULL(apellido1a, ''),
		'~segundo_apellido:', IFNULL(apellido2a, ''),
		'~nombre_completo:', IFNULL(abogado, ''),
		'~tipo_relacion:abogado'
	) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM nit22021
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM nit32021 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(comtelefono, ''),
        '|numero:', IFNULL(tel1, ''),
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
	CONCAT(
		'dpi:', IFNULL(cuia, ''),
		'~primer_nombre:', IFNULL(nombre1a, ''),
		'~segundo_nombre:', IFNULL(nombre2a, ''),
		'~tercer_nombre:', IFNULL(nombre3a, ''),
		'~primer_apellido:', IFNULL(apellido1a, ''),
		'~segundo_apellido:', IFNULL(apellido2a, ''),
		'~nombre_completo:', IFNULL(abogado, ''),
		'~tipo_relacion:abogado'
	) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM nit32021
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM padron2019 WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    CONCAT(NOMBRES, ' ', APELLIDOS) AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'M' THEN 'M'
        WHEN UPPER(sexo) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    nacionalidad,
    null AS discapacidad,
    CONCAT(IFNULL(primer_nombre_padre, ''), ' ', IFNULL(segundo_nombre_padre, ''), ' ', IFNULL(tercer_nombre_padre, ''), ' ', IFNULL(primer_apellido_padre, ''), ' ', IFNULL(SEGUNDO_APELLIDO_PADRE, '')) AS padre,
    CONCAT(IFNULL(primer_nombre_madre, ''), ' ', IFNULL(segundo_nombre_madre, ''), ' ', IFNULL(tercer_nombre_madre, ''), ' ', IFNULL(primer_apellido_madre, ''), ' ', IFNULL(SEGUNDO_APELLIDO_MADRE, '')) AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:~departamento:', IFNULL(departamento, '')
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
	null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM padron2019
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM pasaporte WHERE dpi IS NOT NULL;
SELECT 
    dpi,
    nit,
    igss,
    irtra,
    null AS cedula,
    PassportNo AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    MARRYLASTNAME AS apellido_casada,
    null AS nombre_completo,
    DOB AS fecha_nacimiento,
    CASE 
        WHEN CivilStatus = 'C' THEN 'Casado/a'
        WHEN CivilStatus = 'S' THEN 'Soltero'
        ELSE NULL
    END AS estado_civil,   
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(Sex) = 'M' THEN 'M'
        WHEN UPPER(Sex) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    Nationality AS nacionalidad,
    null AS discapacidad,
    FatherName AS padre,
    MotherName AS madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(Address1, ''),
        '~zona:', IFNULL(Zona, ''),
        '|direccion_completa:', IFNULL(Address2, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(UserDefined1, '')
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(FOTO1, ''),
        '|url~', IFNULL(FOTO2, ''),
        '|url~', IFNULL(FOTO3, ''),
        '|url~', IFNULL(CurrentPicture, ''),
        '|url~', IFNULL(LastPicture, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, ''),
        '|url~', IFNULL(LeftFinger, ''),
        '|url~', IFNULL(RightFinger, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(DriveLic, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
   CONCAT(
		'dpi:', IFNULL(MinorCedulaFather, ''),
		'~nombre_completo:', IFNULL(FatherName, ''),
		'~tipo_relacion:padre',
		'|dpi:', IFNULL(MinorCedulaMother, ''),
		'~nombre_completo:', IFNULL(MotherName, ''),
		'~tipo_relacion:madre'
        '|dpi:', IFNULL(MinorCedulaconyugue, ''),
		'~nombre_completo:', IFNULL(conyugue, ''),
		'~tipo_relacion:conyugue',
        '|dpi:', IFNULL(minorcedulaEx, ''),
		'~nombre_completo:', IFNULL(ex, ''),
		'~tipo_relacion:ex'
	) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM pasaporte
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM personasnit WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    NIT,
    igss,
    irtra,
    CEDULA_NUMERO AS cedula,
    PASAPORTE AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    nombre_padre AS padre,
    nombre_madre AS madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~municipio:', IFNULL(municipio, ''),
        '~departamento:', IFNULL(departamento, ''),
        '~colonia:', IFNULL(COLONIA, ''),
        '~zona:', IFNULL(ZONA, ''),
        '~calle:', IFNULL(CALLE_AVENIDA, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO, ''),
        '|numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(telefono2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(EMAIL, ''), 
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT('url~', IFNULL(firma, '')) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
	CONCAT(
		'dpi:', IFNULL(DPIP, ''),
		'~primer_nombre:', IFNULL(PRIMER_NOMBRE_PADRE, ''),
		'~segundo_nombre:', IFNULL(SEGUNDO_NOMBRE_PADRE, ''),
		'~tercer_nombre:', IFNULL(TERCER_NOMBRE_PADRE, ''),
		'~primer_apellido:', IFNULL(PRIMER_APELLIDO_PADRE, ''),
		'~segundo_apellido:', IFNULL(SEGUNDO_APELLIDO_PADRE, ''),
		'~nombre_completo:', IFNULL(nombre_padre, ''),
		'~tipo_relacion:padre',
        '|dpi:', IFNULL(DPIM, ''),
		'~primer_nombre:', IFNULL(PRIMER_NOMBRE_MADRE, ''),
		'~segundo_nombre:', IFNULL(SEGUNDO_NOMBRE_MADRE, ''),
		'~tercer_nombre:', IFNULL(TERCER_NOMBRE_MADRE, ''),
		'~primer_apellido:', IFNULL(PRIMER_APELLIDO_MADRE, ''),
		'~segundo_apellido:', IFNULL(SEGUNDO_APELLIDO_MADRE, ''),
		'~nombre_completo:', IFNULL(nombre_madre, ''),
		'~tipo_relacion:madre',
        '|dpi:', IFNULL(DPIC, ''),
		'~nombre_completo:', IFNULL(conyugue, ''),
		'~tipo_relacion:conyugue',
        '|dpi:', IFNULL(dpiex, ''),
		'~nombre_completo:', IFNULL(ex, ''),
		'~tipo_relacion:ex'
	) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM personasnit
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM pnc WHERE dpi IS NOT NULL;
SELECT 
    CAST(dpi AS CHAR) AS dpi,
    NIT,
    igss,
    null AS irtra,
    CAST(NUMERO_CEDULA AS CHAR) AS cedula,
    null AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    null AS apellido_casada,
    null AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN SEXO = 1 THEN 'M'
        WHEN SEXO = 2 THEN 'F'
        ELSE null
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    NOMBRE_PADRE AS padre,
    NOMBRE_MADRE AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION_DOMICILIO, ''),
        '|direccion_completa:', IFNULL(DIRECCION_PADRES, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO_DOMICILIO, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(TELEFONO_CELULAR, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(TELEFONO_CASO_EMERGENCIA, ''), 
        '~tipo:emergencia'
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(CORREO_ELECTRONICO, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM pnc
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM renap WHERE CUI IS NOT NULL;
SELECT 
    CUI AS dpi,
    NIT AS nit,
    IGSS AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    null AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    CONCAT(IFNULL(PRIMER_NOMBRE_PADRE, ''), ' ', IFNULL(SEGUNDO_NOMBRE_PADRE, ''), ' ', IFNULL(TERCER_NOMBRE_PADRE, ''), ' ', IFNULL(PRIMER_APELLIDO_PADRE, ''), ' ', IFNULL(SEGUNDO_APELLIDO_PADRE, '')) AS padre,
    CONCAT(IFNULL(PRIMER_NOMBRE_MADRE, ''), ' ', IFNULL(SEGUNDO_NOMBRE_MADRE, ''), ' ', IFNULL(TERCER_NOMBRE_MADRE, ''), ' ', IFNULL(PRIMER_APELLIDO_MADRE, ''), ' ', IFNULL(SEGUNDO_APELLIDO_MADRE, '')) AS madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(COMPLEMENTO, ''),
        '~departamento:', IFNULL(DEPARTAMENTO, ''),
        '~colonia:', IFNULL(COLONIA, ''),
        '~zona:', IFNULL(ZONA, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO_CASA, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(TELEFONO_TRABAJO, ''),
        '~tipo:trabajo',
        '|numero:', IFNULL(TELEFONO_CELULAR, ''), 
        '~tipo:celular'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM renap
WHERE CUI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM renap1 WHERE cui IS NOT NULL;
SELECT 
    CAST(cui AS CHAR) AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    CONCAT(IFNULL(nombres, ''), ' ', IFNULL(apellidos, '')) AS nombre_completo,
    f_nac AS fecha_nacimiento,
    CASE 
        WHEN estado_civil = 'C' THEN 'Casado/a'
        WHEN estado_civil = 'S' THEN 'Soltero/a'
        ELSE null
    END AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'M' THEN 'M'
        WHEN UPPER(sexo) = 'F' THEN 'F'
        ELSE null
    END AS genero,
    nacionalidad,
    null AS discapacidad,
    nombre_padre AS padre,
    nombre_madre AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM renap1
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM representantes2021 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombre AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion1, ''),
        '|direccion_completa:', IFNULL(direccion2, ''),
        '|direccion_completa:', IFNULL(direccion3, ''),
        '|direccion_completa:', IFNULL(direccion4, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(tel1, ''), 
        '|numero:', IFNULL(tel2, ''),
        '|numero:', IFNULL(tel3, ''),
        '|numero:', IFNULL(tel4, ''),
        '|numero:', IFNULL(tel5, ''),        
        '|numero:', IFNULL(tel6, ''),
        '|numero:', IFNULL(tel7, ''),
        '|numero:', IFNULL(tel8, ''),
        '|numero:', IFNULL(tel9, ''),
        '|numero:', IFNULL(tel10, ''), 
        '|numero:', IFNULL(tel11, ''), 
        '|numero:', IFNULL(tel12, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:Representante Legal'
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM representantes2021
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--

SELECT COUNT(*) FROM resumen WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit,
    igss,
    irtra,
    null AS cedula,
    PASAPORTE AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    null AS nombre_completo,
    FECNACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN sexo = 1 THEN 'M'
        WHEN sexo = 2 THEN 'F'
        ELSE NULL
    END AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    CONCAT(IFNULL(NOMPADRE1, ''), ' ', IFNULL(NOMPADRE2, ''), ' ', IFNULL(NOMPADRE3, ''), ' ', IFNULL(APE1PADRE, ''), ' ', IFNULL(APE2PADRE, '')) AS padre,
    CONCAT(IFNULL(NOM1MADRE, ''), ' ', IFNULL(NOM2MADRE, ''), ' ', IFNULL(NOM3MADRE, ''), ' ', IFNULL(APE1MADRE, ''), ' ', IFNULL(APE2MADRE, '')) AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~zona:', IFNULL(ZONA, ''),
        '|direccion_completa:', IFNULL(DIRECCION1, ''),
        '|direccion_completa:', IFNULL(DIRECCION2, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(tel1, ''), 
        '|numero:', IFNULL(tel2, ''),
        '|numero:', IFNULL(tel3, '')
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM resumen
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM sat1 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(comtelefono, ''), 
        '|numero:', IFNULL(tel1, ''),
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM sat1
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM sat2 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(comtelefono, ''),
        '|numero:', IFNULL(tel1, ''),
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM sat2
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM sat3 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombreprov AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(domdireccion, ''),
        '~municipio:', IFNULL(dommunicipio, ''),
        '~departamento:', IFNULL(domdepartamento, ''),
        '|direccion_completa:', IFNULL(comdireccion, ''),
        '~municipio:', IFNULL(communicipio, ''),
        '~departamento:', IFNULL(comdepartamento, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(domtelefono, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(comtelefono, ''),
        '|numero:', IFNULL(tel1, ''), 
        '|numero:', IFNULL(tel2, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(comcorreo, '')
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(nombreprov, ''),
        '~cargo:', IFNULL(actividadeconomica, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM sat3
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM sede WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit,
    igss,
    null AS irtra,
    null AS cedula,
    PASAPORTE AS pasaporte,
    NOMBRE1 AS primer_nombre,
    NOMBRE2 AS segundo_nombre,
    NOMBRE3 AS tercer_nombre,
    APELLIDO1 AS primer_apellido,
    APELLIDO2 AS segundo_apellido,
    APELLIDO3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    PADRE AS padre,
    MADRE AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''), 
        '~municipio:', IFNULL(MUNICIPIO, ''), 
        '~departamento:', IFNULL(DEPARTAMENTO, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(TELEFONO, '')
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''), 
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''), 
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(FIRMA, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(LICENCIA, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    CONCAT(
        'dpi:', IFNULL(DPIP, ''),
        '~nombre_completo:', IFNULL(PADRE, ''),
        '~tipo_relacion:padre',
        '|dpi:', IFNULL(DPIM, ''),
        '~nombre_completo:', IFNULL(MADRE, ''),
        '~tipo_relacion:madre'
    ) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM sede
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tenencia WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    null AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    null AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~departamento:', IFNULL(departamento, ''),
        '~zona:', IFNULL(zona, '')
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT('url~', IFNULL(foto, '')) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(empresa, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, '')
    ) AS licencias_srt,
    CONCAT(
        '~marca:', IFNULL(marca1, ''), 
        '~modelo:', IFNULL(marca2, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tenencia
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tigo1 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombres AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(telefono2, ''),
        '|numero:', IFNULL(telefono3, '')
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''), 
        '|url~', IFNULL(foto1, ''), 
        '|url~', IFNULL(foto2, ''), 
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tigo1
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tigo2 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    CEDULA_DPI AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(telefono2, ''),
        '|numero:', IFNULL(telefono3, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(EMAIL, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tigo2
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tigo2016 WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    null AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '|direccion_completa:', IFNULL(DIRECCION_2A, ''),
        '|direccion_completa:', IFNULL(DIRECCION_1, ''),
        '|direccion_completa:', IFNULL(DIRECCION_2, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO, ''),
        '|numero:', IFNULL(TEL_C, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(TCMAIL, ''),
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tigo2016
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tigo2020 WHERE DPI IS NOT NULL;
SELECT 
    CAST(DPI AS CHAR) AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    CEDULA AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '~departamento:', IFNULL(EXTENDIDO_EN, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO_REFERENCIA, ''), 
        '~tipo:referencia',
        '|numero:', IFNULL(TEL_CONTACTO, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(CORREO, ''),
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tigo2020
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tigo2022 WHERE DPI IS NOT NULL;
SELECT 
    CAST(DPI AS CHAR) AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    null AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '|direccion_completa:', IFNULL(DIRECCION_2A, ''),
        '|direccion_completa:', IFNULL(DIRECCION_1, ''),
        '|direccion_completa:', IFNULL(DIRECCION_2, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(TELEFONO, ''),
        '|numero:', IFNULL(TEL_C, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(TCMAIL, ''),
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tigo2022
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vac7m WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    nit AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    nombre_completo AS nombre_completo,
    fecha_nacimiento AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'HOMBRE' THEN 'M'
        WHEN UPPER(sexo) = 'MUJER' THEN 'F'
        ELSE null
    END AS genero,
    nacionalidad,
    discapacidad AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion1, ''),
        '~municipio:', IFNULL(municipio, ''),
        '~departamento:', IFNULL(departamento, ''),
        '|direccion_completa:', IFNULL(direccion2, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vac7m
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vacuna2022 WHERE cui IS NOT NULL;
SELECT 
    cui AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    nombre_completo AS nombre_completo,
    fecha_nacimiento AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vacuna2022
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vehi WHERE DPI IS NOT NULL;
SELECT 
    DPI AS dpi,
    NIT AS nit,
    IGSS AS igss,
    IRTRA AS irtra,
    null AS cedula,
    PASAPORTE AS pasaporte,
    NOMBRE1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '~municipio:', IFNULL(MUNICIPIO, ''),
        '~departamento:', IFNULL(DEPARTAMENTO, ''),
        '|direccion_completa:', IFNULL(direccion1, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(telefono2, ''),
        '|numero:', IFNULL(telefono3, '')
    ) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(email, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    CONCAT(
        'placa:', IFNULL(PLACA, ''),
        '~marca:', IFNULL(MARCA, ''),
        '~modelo:', IFNULL(MODELO, ''),
        '~color:', IFNULL(COLOR, ''),
        '|chasis:', IFNULL(CHASIS, ''),
        '~serie:', IFNULL(SERIE, ''),
        '~motor:', IFNULL(MOTOR, ''),
        '~tipo:', IFNULL(TIPO, ''),
        '~combustible:', IFNULL(COMBUSTIBLE, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vehi
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vehi2 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '~municipio:', IFNULL(MUNICIPIO, ''),
        '~departamento:', IFNULL(DEPARTAMENTO, '')
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    CONCAT(
        'placa:', IFNULL(PLACA, ''),
        '~marca:', IFNULL(MARCA, ''),
        '~modelo:', IFNULL(MODELO, ''),
        '~color:', IFNULL(COLOR, ''),
        '|chasis:', IFNULL(CHASIS, ''),
        '~serie:', IFNULL(SERIE, ''),
        '~motor:', IFNULL(MOTOR, ''),
        '~tipo:', IFNULL(TIPO, ''),
        '~combustible:', IFNULL(COMBUSTIBLE, ''),
        '~uso:', IFNULL(USO, ''),
        '~franquicia:', IFNULL(FRANQUICIA, ''),
        '~poliza:', IFNULL(POLIZA, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vehi2
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vehi2019 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    NIT AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, ''),
        '~municipio:', IFNULL(MUNICIPIO, ''),
        '~departamento:', IFNULL(DEPARTAMENTO, '')
    ) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    CONCAT(
        'marca:', IFNULL(MARCA, ''),             
        '~modelo:', IFNULL(MODELO, ''),
        '~linea:', IFNULL(LINEA, ''),
        '~color:', IFNULL(COLOR, ''),
        '~placa:', IFNULL(PLACA, ''),    
        '~serie:', IFNULL(SERIE, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vehi2019
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM visanet WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit AS nit,
    igss AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombre AS nombre_completo,
    FN AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    padre,
    madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, ''),
        '~colonia:', IFNULL(colonia, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, ''),
        '|numero:', IFNULL(TELEFONO1, ''),
        '|numero:', IFNULL(TELEFONO2, '')
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, ''),
        '|url~', IFNULL(foto4, ''),
        '|url~', IFNULL(foto5, '')
    ) AS fotos_str,
    CONCAT(
        'url~', IFNULL(firma, '')
    ) AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    CONCAT(
        'dpi:', IFNULL(dpip, ''),
        '~nombre_completo:', IFNULL(padre, ''),
        '~tipo_relacion:padre',
        '|dpi:', IFNULL(dpim, ''),
        '~nombre_completo:', IFNULL(madre, ''),
        '~tipo_relacion:madre',
        '|dpi:', IFNULL(dpic, ''),
        '~nombre_completo:', IFNULL(conyugue, ''),
        '~tipo_relacion:conyugue'
    ) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM visanet
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM visanet2 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null AS tercer_nombre,
    null AS primer_apellido,
    null AS segundo_apellido,
    null AS apellido_casada,
    NOMBRE AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(DIRECCION, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, '')
    ) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM visanet2
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM votantes2018 WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit AS nit,
    igss AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    NOMBRE AS nombre_completo,
    fecha_nacimiento AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    padre,
    madre,
    conyugue,
    CONCAT(
        'direccion_completa:', IFNULL(direccion, '')
    ) AS direcciones_srt,
    CONCAT(
        'numero:', IFNULL(telefono, ''),
        '~tipo:~estado:'
    ) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM votantes2018
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM segeplan WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    null AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    nombre3 AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    apellido3 AS apellido_casada,
    nombre AS nombre_completo,
    fecha_nacimiento AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    null AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str, 
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM segeplan
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM tenencia WHERE dpi IS NOT NULL;
SELECT 
    dpi AS dpi,
    nit AS nit,
    null AS igss,
    null AS irtra,
    null AS cedula,
    pasaporte AS pasaporte,
    nombre1 AS primer_nombre,
    nombre2 AS segundo_nombre,
    null AS tercer_nombre,
    apellido1 AS primer_apellido,
    apellido2 AS segundo_apellido,
    null AS apellido_casada,
    null AS nombre_completo,
    null AS fecha_nacimiento,
    null AS estado_civil,
    null AS grupo_sanguino,
    null AS genero,
    null AS nacionalidad,
    null AS discapacidad,
    null AS padre,
    null AS madre,
    null AS conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(direccion, ''),
        '~departamento:', IFNULL(departamento, ''),
        '~zona:', IFNULL(zona, '')
	) AS direcciones_srt, 
    null AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, '')
    ) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(empresa, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, ''),
        '~tipo: tenencia arma'
    ) AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM tenencia
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM usac_1 WHERE dpi IS NOT NULL;
SELECT 
	dpi AS dpi,
    nit,
    igss,
    irtra,
    cedula,
    pasaporte,
    nombre1 as primer_nombre,
    nombre2 as segundo_nombre,
    nombre3 as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    apellido3 as apellido_casada,
    null as nombre_completo,
    FECHA_NACIMIENTO AS fecha_nacimiento,
    CASE 
        WHEN estado_civil = 'C' THEN 'Casado/a'
        WHEN estado_civil = 'S' THEN 'Soltero/a'
        ELSE NULL
    END AS estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'M' THEN 'M'
        WHEN UPPER(sexo) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(DIRECCION, ''),
        '~zona:', IFNULL(zona, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(TELEFONO, '') 
	) AS telefonos_str,
    null AS correos_str,
    CONCAT(
        'url~', IFNULL(FOTO, ''),
        '|url~', IFNULL(FOTO1, ''),
        '|url~', IFNULL(FOTO2, ''),
        '|url~', IFNULL(FOTO3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    CONCAT(
        'numero:', IFNULL(licencia, '')
    ) AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM usac_1
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vacunados WHERE cui IS NOT NULL;
SELECT 
	cui AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    nombre_completo,
    fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'HOMBRE' THEN 'M'
        WHEN UPPER(sexo) = 'MUJER' THEN 'F'
        ELSE NULL
    END AS sexo,
    nacionalidad,
    discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    null AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, '') 
	) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vacunados
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vacunados3m7 WHERE cui IS NOT NULL;
SELECT 
	cui AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    nombre_completo,
    fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'HOMBRE' THEN 'M'
        WHEN UPPER(sexo) = 'MUJER' THEN 'F'
        ELSE NULL
    END AS sexo,
    nacionalidad,
    discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    null AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, '') 
	) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vacunados3m7
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vacunasvincular2 WHERE cui IS NOT NULL;
SELECT 
	cui AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    nombre_completo,
    STR_TO_DATE(fecha_nacimiento, '%d/%m/%Y') AS fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'HOMBRE' THEN 'M'
        WHEN UPPER(sexo) = 'MUJER' THEN 'F'
        ELSE NULL
    END AS sexo,
    nacionalidad,
    discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    null AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, '') 
	) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vacunasvincular2
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};


--**--
SELECT COUNT(*) FROM vacunavincular WHERE cui IS NOT NULL;
SELECT 
	cui AS dpi,
    null AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    nombre_completo,
    fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(sexo) = 'HOMBRE' THEN 'M'
        WHEN UPPER(sexo) = 'MUJER' THEN 'F'
        ELSE NULL
    END AS sexo,
    nacionalidad,
    discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    null AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, '') 
	) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vacunavincular
WHERE cui IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM vehiculos09 WHERE DPI IS NOT NULL;
SELECT 
	DPI AS dpi,
    NIT AS nit,
    IGSS AS igss,
    IRTRA AS irtra,
    null as cedula,
    PASAPORTE as pasaporte,
    NOMBRE1 as primer_nombre,
    nombre2 as segundo_nombre,
    nombre3 as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    apellido3 as apellido_casada,
    null as nombre_completo,
    null asfecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS sexo,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(DIRECCION, ''),
        '~municipio:', IFNULL(MUNICIPIO, ''),
        '~departamento:', IFNULL(DEPARTAMENTO, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono1, ''),
        '|numero:', IFNULL(telefono2, ''),
        '|numero:', IFNULL(telefono3, '')
	) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(email, '')
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    CONCAT(
        'marca:', IFNULL(MARCA, ''),             
        '~modelo:', IFNULL(MODELO, ''),
        '~linea:', IFNULL(LINEA, ''),
        '~color:', IFNULL(COLOR, ''),
        '~placa:', IFNULL(PLACA, ''),
        '~serie:', IFNULL(SERIE, '')
    ) AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    null as fecha_ingreso_oca
FROM vehiculos09
WHERE DPI IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM verdefijo WHERE Identificacion IS NOT NULL;
SELECT 
	Identificacion AS dpi,
    NIT as nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    null as apellido_casada,
    nombres as nombre_completo,
    `Fecha Nacimiento` as fecha_nacimiento,
    CASE
        WHEN UPPER(`Estado Civil`) = 'C' THEN 'Casado/a'
        WHEN UPPER(`Estado Civil`) = 'S' THEN 'Soltero/a'
        ELSE NULL
    END AS estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(Sexo) = 'M' THEN 'M'
        WHEN UPPER(Sexo) = 'F' THEN 'F'
        ELSE NULL
    END AS sexo,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    `Nombre Conyuge` as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(Direccion, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, ''), 
        '|numero:', IFNULL(TelReferencia, ''),
        '|numero:', IFNULL(TelTrabajo, ''), 
        '~tipo:trabajo'
	) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(Email, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(FOTO1, ''),
        '|url~', IFNULL(FOTO2, ''),
        '|url~', IFNULL(FOTO3, '')
    ) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(Trabajo, ''), 
        '~jefe:', IFNULL(`Nombre Jefe`, ''),
        '~antiguedad:', IFNULL(CAST(`Años de Laborar` AS CHAR), '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    CONCAT(
        'telefono:', IFNULL(TelRef1, ''),
        '~nombre:', IFNULL(Referencia1, ''),
        '|telefono:', IFNULL(`Tel Ref 2`, ''),
        '~nombre:', IFNULL(`Referencia 2`, '')
    ) AS referencias_str,
    null as fecha_ingreso_oca
FROM verdefijo
WHERE Identificacion IS NOT NULL
LIMIT {limit} OFFSET {offset};

--**--
SELECT COUNT(*) FROM verdemovil WHERE dpi IS NOT NULL;
SELECT 
	dpi AS dpi,
    NIT as nit,
    null as igss,
    null as irtra,
    cedula,
    null as pasaporte,
    Nombres as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    null as apellido_casada,
    null as nombre_completo,
    FechaNacimiento as fecha_nacimiento,
    CASE
        WHEN UPPER(EstadoCivil) = 'C' THEN 'Casado/a'
        WHEN UPPER(EstadoCivil) = 'S' THEN 'Soltero/a'
        ELSE NULL
    END AS estado_civil,
    null as grupo_sanguino,
    CASE 
        WHEN UPPER(Sexo) = 'M' THEN 'M'
        WHEN UPPER(Sexo) = 'F' THEN 'F'
        ELSE NULL
    END AS sexo,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    NombreConyuge as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(Direccion, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(telefono, ''),
        '|numero:', IFNULL(TelTrabajo, ''), 
        '~tipo:trabajo'
	) AS telefonos_str,
    CONCAT(
        'correo:', IFNULL(Email, ''),
        '~tipo:personal'
    ) AS correos_str,
    CONCAT(
        'url~', IFNULL(foto, ''),
        '|url~', IFNULL(foto1, ''),
        '|url~', IFNULL(foto2, ''),
        '|url~', IFNULL(foto3, '')
    ) AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(Trabajo, ''), 
        '~jefe:', IFNULL(NombreJefe, ''),
        '~antiguedad:', IFNULL(CAST(`AñosdeLaborar` AS CHAR), '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    CONCAT(
        'telefono:', IFNULL(TelRef1, ''),
        '~nombre:', IFNULL(Referencia1, ''),
        '|telefono:', IFNULL(TelRef2, ''),
        '~nombre:', IFNULL(Referencia2, '')
    ) AS referencias_str,
    null as fecha_ingreso_oca
FROM verdemovil
WHERE dpi IS NOT NULL
LIMIT {limit} OFFSET {offset};

