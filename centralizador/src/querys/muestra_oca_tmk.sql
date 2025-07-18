
SELECT 
	dpi AS dpi,
	nit,
    igss,
    NULL AS irtra,
    cedula,
    pasaporte,
    nombre1 as primer_nombre,
    nombre2 as segundo_nombre,
    NULL as tercer_nombre,
    apellido1 as primer_apellido,
    apellido2 as segundo_apellido,
    NULL as apellido_casada,
    nombre as nombre_completo,
    fecha_nacimiento,
	CASE 
        WHEN estado_civil = 'C' THEN 'Casado/a'
        WHEN estado_civil = 'S' THEN 'Soltero/a'
        ELSE NULL
    END AS estado_civil, 
    null as grupo_sanguino,
	null as nacionalidad,
    null as discapacidad,
    nombre_padre as padre,
    nombre_madre as madre,
    null as conyugue,
	CASE 
        WHEN UPPER(sexo) = 'M' THEN 'M'
        WHEN UPPER(sexo) = 'F' THEN 'F'
        ELSE NULL
    END AS genero,
	CONCAT(
		'direccion_completa:', ISNULL(direccion, ''),
        '~municipio:', ISNULL(municipio, ''),
        '~departamento:', ISNULL(departamento, ''),
		'|direccion_completa:', ISNULL(direccion2, ''),
		(
            SELECT STRING_AGG(
				CONCAT('|direccion_completa:', ISNULL(bd_sub.direccion, ''))
			, '') WITHIN GROUP (ORDER BY bd_sub.direccion)
            FROM [dbo].[base_unificada_direcciones] bd_sub
            WHERE bd_sub.id_base_unificada = id
        )
	) AS direcciones_srt,
	CONCAT(
		'numero:', ISNULL(telefono1, ''), 
        '|numero:', ISNULL(telefono2, ''), 
        '|numero:', ISNULL(telefono2, ''),
		'|numero:', ISNULL(telefono3, ''),
		'|numero:', ISNULL(telefono4, ''),
		'|numero:', ISNULL(telefono5, ''),
		'|numero:', ISNULL(telefono_onbase1, ''),
		'|numero:', ISNULL(telefono_onbase2, ''),
		'|numero:', ISNULL(telefono_onbase3, ''),
		'|numero:', ISNULL(telefono_va, ''),
		'|numero:', ISNULL(telefono_claro, ''),
		'~compania:Claro',
		'|numero:', ISNULL(telefono_tg, ''),
		'~compania:Tigo',
		'|numero:', ISNULL(telefono_trabajo, ''),
		'~tipo:Trabajo',
		(
            SELECT STRING_AGG(
				CONCAT(
					'|numero:', ISNULL(bt_sub.telefono, ''),
					'~tipo:', ISNULL(bt_sub.procedencia, '')
				)
			, '') WITHIN GROUP (ORDER BY bt_sub.telefono)
            FROM [dbo].[base_unificada_telefonos] bt_sub
            WHERE bt_sub.id_base_unificada = id
        )
	) AS telefonos_str,
	CONCAT(
		'correo:', ISNULL(email, ''),
		'|correo:', ISNULL(email_2, ''),
		'|correo:', ISNULL(email_3, ''),
		'|correo:', ISNULL(email_4, ''),
		'|correo:', ISNULL(email_5, '')
	) AS correos_str,
	null AS fotos_str,
    null AS firmas_str,
	CONCAT(
        'razon_social:', ISNULL(empresa, ''), 
        '~direccion:', ISNULL(direccion_trabajo, ''), 
        '~cargo:', ISNULL(puesto, '')     
    ) AS trabajos_str,
	null AS detenciones_str,
	null AS estudios_str,
	null AS licencias_srt,
	null AS vehiculos_srt,
	null AS relaciones_str,
	tipo_cliente,
	(
		SELECT 
			STRING_AGG(
				CONCAT(
					'|telefono:', ISNULL(br_sub.telefono, ''),
					'~nombre:', ISNULL(br_sub.referencia, ''),
					'~relacion:', ISNULL(br_sub.parentesco, '')
				)
			, '') WITHIN GROUP (ORDER BY br_sub.telefono)
        FROM [dbo].[base_unificada_referencias] br_sub
        WHERE br_sub.id_base_unificada = id 
	) AS referencias_str,
	fecha_ingreso_oca
FROM [dbo].[base_unificada]
WHERE dpi IS NOT NULL
AND CAST(fecha_creacion AS DATE) BETWEEN  '{start}' AND '{end}';


SELECT 
	dpi AS dpi,
	nit,
    NULL AS igss,
    NULL AS irtra,
    cedula,
    pasaporte,
    NULL as primer_nombre,
    NULL as segundo_nombre,
    NULL as tercer_nombre,
    NULL as primer_apellido,
    NULL as segundo_apellido,
    NULL as apellido_casada,
    nombre as nombre_completo,
    fecha_nacimiento,
	NULL AS estado_civil, 
    null as grupo_sanguino,
	null as nacionalidad,
    null as discapacidad,
    NULL as padre,
    NULL as madre,
    null as conyugue,
	NULL AS genero,
		CONCAT(
		'direccion_completa:', ISNULL(direccion, ''),
        '~municipio:', ISNULL(municipio, ''),
        '~departamento:', ISNULL(departamento, ''),
		'|direccion_completa:', ISNULL(direccion2, ''),
		'|direccion_completa:', ISNULL(direccion_trabajo, '')
	) AS direcciones_srt,
	CONCAT(
		'numero:', ISNULL(telefono1, ''), 
        '|numero:', ISNULL(telefono2, ''), 
        '|numero:', ISNULL(telefono2, ''),
		'|numero:', ISNULL(telefono3, ''),
		'|numero:', ISNULL(telefono4, ''),
		'|numero:', ISNULL(telefono5, ''),
		'|numero:', ISNULL(telefono_onbase1, ''),
		'|numero:', ISNULL(telefono_onbase2, ''),
		'|numero:', ISNULL(telefono_onbase3, ''),
		'|numero:', ISNULL(telefono_va, ''),
		'|numero:', ISNULL(cedula, '')
	) AS telefonos_str,
	CONCAT(
		'correo:', ISNULL(email, '')
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
	fecha_carga AS fecha_ingreso_oca
FROM [dbo].[archivos_oca_verde]
WHERE dpi IS NOT NULL
AND CAST(fecha_carga AS DATE) BETWEEN '{start}' AND '{end}';


SELECT 
	DPI AS dpi,
	NIT as nit,
    NULL AS igss,
    NULL AS irtra,
    NULL AS cedula,
    NULL AS pasaporte,
    NULL as primer_nombre,
    NULL as segundo_nombre,
    NULL as tercer_nombre,
    NULL as primer_apellido,
    NULL as segundo_apellido,
    NULL as apellido_casada,
    NOMBRE as nombre_completo,
    TRY_CONVERT(DATE, FECHA_NACIMIENTO, 103) as fecha_nacimiento,
	NULL AS estado_civil, 
    null as grupo_sanguino,
	null as nacionalidad,
    null as discapacidad,
    NULL as padre,
    NULL as madre,
    null as conyugue,
	NULL AS genero,
	CONCAT(
		'direccion_completa:', ISNULL(DIRECCION, ''),
        '|direccion_completa:', ISNULL(DIRECCION_1, ''),
		'|direccion_completa:', ISNULL(DIRECCION_2, ''),
		'|direccion_completa:', ISNULL(DIRECCION_3, ''),
		'|direccion_completa:', ISNULL(DIRECCION_2A, '')
	) AS direcciones_srt,
	null AS telefonos_str,
	CONCAT(
		'correo:', ISNULL(TCMAIL, '')
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
FROM [dbo].[base_TG_Abr2021]
WHERE DPI IS NOT NULL 
AND DPI != ''
AND TRY_CONVERT(DATE, FECHA_ACTIVACION, 103) BETWEEN '{start}' AND '{end}';


SELECT 
	cui AS dpi,
	nit,
    NULL AS igss,
    NULL AS irtra,
    NULL AS cedula,
    NULL AS pasaporte,
    primer_nombre,
    segundo_nombre,
    tercer_nombre,
    primer_apellido,
    segundo_apellido,
    apellido_casada,
    null as nombre_completo,
    null as fecha_nacimiento,
	NULL AS estado_civil, 
    null as grupo_sanguino,
	null as nacionalidad,
    null as discapacidad,
    NULL as padre,
    NULL as madre,
    null as conyugue,
	NULL AS genero,
	null AS direcciones_srt,
	null AS telefonos_str,
	null AS correos_str,
	null AS fotos_str,
    null AS firmas_str,
	(
        SELECT 
			TOP 1
				CONCAT(
					'razon_social:', ISNULL(razon_social, ''), 
					'~direccion:', ISNULL(direccion, ''), 
					'~jefe:', ISNULL(nombre_contacto, '')
				)
		FROM [dbo].[bo_empresa] be
		INNER JOIN [dbo].[bo_empresa_empleado] bem ON be.id = bem.id_empresa 
		WHERE bem.id_empleado = id_empleado
    ) AS trabajos_str,
	null AS detenciones_str,
	null AS estudios_str,
	null AS licencias_srt,
	null AS vehiculos_srt,
	null AS relaciones_str,
	null AS tipo_cliente,
	null AS referencias_str,
	fecha_creacion as fecha_ingreso_oca
FROM [dbo].[bo_empleado]
WHERE cui IS NOT NULL 
AND cui != ''
AND fecha_actualizacion BETWEEN '{start}' AND '{end}';