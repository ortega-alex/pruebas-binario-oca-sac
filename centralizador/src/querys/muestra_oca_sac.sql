SELECT
	identificacion_numero AS dni,
    null as nit,
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
    CONCAT(nombres, ' ', apellidos) as nombre_completo,
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
		'direccion_completa:', ISNULL(direccion, ''),
        '~municipio:', ISNULL(municipio, ''),
        '~departamento:', ISNULL(departamento, ''),
        '~zona:', ISNULL(zona, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', ISNULL(telefono_casa, ''), '~tipo:casa',
        '|numero:', ISNULL(telefono_celular, ''), '~tipo:celular',
		'|numero:', ISNULL(telefono_otro, ''),
		'|numero:', ISNULL(trabajo_telefono, ''), '~tipo:trabajo',
		ISNULL((
			SELECT STRING_AGG(CONCAT('|numero:', valor), '|')
			FROM dbo.remesas_cuentas_campos_adicionales rcca
			INNER JOIN dbo.remesas_campos_adicionales rca ON  rcca.id_campo = rca.id_campo AND rcca.id_remesa = rca.id_remesa
			WHERE rcca.id_remesa = rc.id_remesa
			AND rcca.no_linea = rc.no_linea
			AND rca.descripcion LIKE'%telefono%'
		), '')
	) AS telefonos_str,
    (
	  SELECT STRING_AGG(CONCAT('correo:', valor), '|')
	  FROM dbo.remesas_cuentas_campos_adicionales rcca
	  INNER JOIN dbo.remesas_campos_adicionales rca ON  rcca.id_campo = rca.id_campo AND rcca.id_remesa = rca.id_remesa
	  WHERE rcca.id_remesa = rc.id_remesa
	  AND rcca.no_linea = rc.no_linea
	  AND (rca.descripcion LIKE'%mail%' OR rca.descripcion LIKE'%correo%')
	) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', ISNULL(trabajo_lugar, ''),
        '~direccion:', ISNULL(trabajo_direccion, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    fecha_ultimo_ingreso as fecha_ingreso_oca
FROM dbo.remesas_cuentas rc
WHERE identificacion_numero IS NOT NULL
AND identificacion_tipo = 'DPI'
AND fecha_ultimo_ingreso BETWEEN '{start}' AND '{end}';