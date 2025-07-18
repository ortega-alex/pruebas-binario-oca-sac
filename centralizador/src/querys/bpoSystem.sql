
SELECT 
	DOCUMENTO_IDENTIDAD AS dpi,
    NIT AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    NOMBRE_CLIENTE as nombre_completo,
    FECHA_NACIMIENTO as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
    	'direccion_completa', IFNULL(DIRECCION_INSTALACION, ''),
    	'|direccion_completa', IFNULL(DIRECCION_COBRO, ''),
    	'|direccion_completa', IFNULL(DIRECCION_FACTURACION, '')
    ) AS direcciones_srt,
    CONCAT(
    	'numero:', IFNULL(TELEFONO, '')
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
    FECHA_CREACION as fecha_ingreso_oca
FROM frm_respuestas_75
WHERE DOCUMENTO_IDENTIDAD IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	DOCUMENTO_IDENTIDAD AS dpi,
    null AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    NOMBRE_CLIENTE as nombre_completo,
    FECHA_NACIMIENTO as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
    	'direccion_completa', IFNULL(DIRECCION_INSTALACION, ''),
    	'|direccion_completa', IFNULL(DIRECCION_COBRO, ''),
    	'|direccion_completa', IFNULL(DIRECCION_FACTURACION, '')
    ) AS direcciones_srt,
    CONCAT(
    	'numero:', IFNULL(TELEFONO, '')
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
    FECHA_CREACION as fecha_ingreso_oca
FROM frm_respuestas_83
WHERE DOCUMENTO_IDENTIDAD IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	`2X1X3` AS dpi,
    `2X1X5` AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    `2X1X2` as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(`2X1X8`, ''),
        '~municipio:', IFNULL(cm.nombre_muni , ''),
        '~departamento:', IFNULL(cd.nombre_depto, ''),
        'descripcion:', IFNULL(`2X1X11`, '')
	) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    CONCAT(
		'dpi:', IFNULL(`2X1X27`, ''),
		'nit:', IFNULL(`2X1X26`, ''),
        '~nombre_completo:', IFNULL(`2X1X25`, '')
    ) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    fecha as fecha_ingreso_oca
FROM frm_respuestas_2 
LEFT JOIN catDepartamento cd ON `2X1X9` = cd.id_depto AND cd.id_pais = 1
LEFT JOIN catMunicipios cm ON  `2X1X10` = cm.id_muni AND cd.id_depto = cm.id_depto
WHERE `2X1X3` IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	`26X1X6` AS dpi,
    `26X1X5` AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    `26X1X3` as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(`26X1X10`, ''),
        '~municipio:', IFNULL(cm.nombre_muni , ''),
        '~departamento:', IFNULL(cd.nombre_depto, ''),
        'descripcion:', IFNULL(`26X1X13`, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(`26X1X4`, ''),
        '|numero:', IFNULL(`26X1X5`, ''),
        '|numero:', IFNULL(`26X1X22`, '')
	) AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', IFNULL(`26X1X19`, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    frm.fecha_creacion as fecha_ingreso_oca
FROM frm_respuestas_26 frm
LEFT JOIN catDepartamento cd ON `26X1X11` = cd.id_depto AND cd.id_pais = 1
LEFT JOIN catMunicipios cm ON  `26X1X12` = cm.id_muni AND cd.id_depto = cm.id_depto
WHERE `26X1X6` IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	`27X1X5` AS dpi,
    `27X1X3` AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    `27X1X4` as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(`27X1X6`, ''),
        '~municipio:', IFNULL(cm.nombre_muni , ''),
        '~departamento:', IFNULL(cd.nombre_depto, ''),
        'descripcion:', IFNULL(`27X1X10`, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(`27X1X13`, '')
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
    frm.fecha_creacion as fecha_ingreso_oca
FROM frm_respuestas_27 frm
LEFT JOIN catDepartamento cd ON `27X1X8` = cd.id_depto AND cd.id_pais = 1
LEFT JOIN catMunicipios cm ON  `27X1X9` = cm.id_muni AND cd.id_depto = cm.id_depto
WHERE `27X1X5` IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	`29X1X1` AS dpi,
    null AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    `29X1X3` as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    CONCAT(
		'direccion_completa:', IFNULL(`29X1X5`, ''),
        '~municipio:', IFNULL(cm.nombre_muni , ''),
        '~departamento:', IFNULL(cd.nombre_depto, '')
	) AS direcciones_srt,
    null AS telefonos_str,
    null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
    	'razon_social:', IFNULL(nombre_empresa, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    frm.fecha_creacion as fecha_ingreso_oca
FROM frm_respuestas_29 frm
LEFT JOIN catDepartamento cd ON `29X1X6` = cd.id_depto AND cd.id_pais = 1
LEFT JOIN catMunicipios cm ON  `29X1X7` = cm.id_muni AND cd.id_depto = cm.id_depto
WHERE `29X1X1` IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';

SELECT 
	DOCUMENTO_IDENTIDAD AS dpi,
    null AS nit,
    null as igss,
    null as irtra,
    null as cedula,
    null as pasaporte,
    null as primer_nombre,
    null as segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    NOMBRE_CLIENTE as nombre_completo,
    FECHA_NACIMIENTO as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
    null AS direcciones_srt,
    CONCAT(
    	'numero:', IFNULL(TELEFONO, '')
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
    FECHA_CREACION as fecha_ingreso_oca
FROM frm_respuestas_74
WHERE DOCUMENTO_IDENTIDAD IS NOT NULL
AND fecha BETWEEN '{start}' AND '{end}';
