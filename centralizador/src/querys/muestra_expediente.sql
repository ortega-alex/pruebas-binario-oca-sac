SELECT
	rc.identificacion_numero AS dpi,
	CASE
		WHEN ebb.nit_1 IS NOT NULL AND ebb.nit_1 != '-' THEN ebb.nit_1
		ELSE ebb.nit_2
	END AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    null AS primer_nombre,
    null AS segundo_nombre,
    null as tercer_nombre,
    null as primer_apellido,
    null as segundo_apellido,
    null as apellido_casada,
    ebb.nombre as nombre_completo,
    null AS fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
	CONCAT(
		'direccion_completa:', ISNULL(ebb.direccion_1, ''),
		'direccion_completa:', ISNULL(ebb.direccion_2, '')
	) AS direcciones_srt,
	(
		 ISNULL((
			SELECT STRING_AGG(
				'numero:' + LTRIM(RTRIM(split.value)) + '~tipo:celular', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebb.cell_cyber, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		ISNULL((
			SELECT STRING_AGG(
				'|numero:' + LTRIM(RTRIM(split.value)) + '~tipo:celular', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebb.cell_as400, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		ISNULL((
			SELECT STRING_AGG(
				'|numero:' + LTRIM(RTRIM(split.value)) + '~tipo:casa', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebb.tel_casa, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		ISNULL((
			SELECT STRING_AGG(
				'|numero:' + LTRIM(RTRIM(split.value)) + '~tipo:oficina', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebb.tel_oficina_1, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		ISNULL((
			SELECT STRING_AGG(
				'|numero:' + LTRIM(RTRIM(split.value)) + '~tipo:trabajo', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebb.tel_trabajo, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '')
	) AS telefonos_str,
	ISNULL((
        SELECT STRING_AGG(
            'correo:' + LTRIM(RTRIM(split.value)) + '~tipo:trabajo', '|'
        )
        FROM STRING_SPLIT(ISNULL(ebb.email_trabajo, ''), ',') AS split
        WHERE LTRIM(RTRIM(split.value)) <> ''
    ), '') AS correos_str,
    null AS fotos_str,
    NULL AS firmas_str,
     CONCAT(
        'razon_social:', ISNULL(ebb.trabajo, ''),
        '~direccion:', ISNULL(ebb.direccion_trabajo, ''),
        '~cargo:', ISNULL(ebb.puesto, '')
    ) AS trabajos_str,
    null as detenciones_str,
	null AS estudios_str,
	null AS licencias_srt,
	null AS vehiculos_srt,
    null AS relaciones_str,
	null AS tipo_cliente,
    CONCAT(
        'telefono:', ISNULL(ebb.tel_referencia_1, ''),
        '~nombre:', ISNULL(ebb.referencia_1, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_2, ''),
        '~nombre:', ISNULL(ebb.referencia_2, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_3, ''),
        '~nombre:', ISNULL(ebb.referencia_3, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_4, ''),
        '~nombre:', ISNULL(ebb.referencia_4, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_5, ''),
        '~nombre:', ISNULL(ebb.referencia_5, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_6, ''),
        '~nombre:', ISNULL(ebb.referencia_6, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_7, ''),
        '~nombre:', ISNULL(ebb.referencia_7, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_8, ''),
        '~nombre:', ISNULL(ebb.referencia_8, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_9, ''),
        '~nombre:', ISNULL(ebb.referencia_9, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_10, ''),
        '~nombre:', ISNULL(ebb.referencia_10, ''),
        '~relacion:referencia',
		'|telefono:', ISNULL(ebb.tel_referencia_11, ''),
        '~nombre:', ISNULL(ebb.referencia_11, ''),
        '~relacion:referencia'
    ) AS referencias_str,
    ebb.fecha_creacion as fecha_ingreso_oca
FROM dbo.expedientes_bac_banco ebb
INNER JOIN muestra_oca_sac.dbo.remesas_cuentas rc ON rc.no_cuenta = ebb.no_prestamo
WHERE rc.identificacion_numero IS NOT NULL
AND rc.identificacion_tipo = 'DPI'
AND ebb.fecha_creacion BETWEEN '{start}' AND '{end}';

SELECT
	rc.identificacion_numero AS dni,
    CASE
		WHEN ebt.nit_1 IS NOT NULL AND ebt.nit_1 != '-' THEN ebt.nit_1
		ELSE ebt.nit_2
	END AS nit,
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
    ebt.nombre as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    ebt.nombre_conyugue as conyugue,
    CONCAT(
		'direccion_completa:', ISNULL(ebt.direccion, ''),
        '|direccion_completa:', ISNULL(ebt.direccion_1, ''),
		'|direccion_completa:', ISNULL(ebt.direcciones_adicional_1, ''),
		'|direccion_completa:', ISNULL(ebt.direcciones_adicional_2, ''),
		'|direccion_completa:', ISNULL(ebt.direcciones_adicional_3, ''),
		'|direccion_completa:', ISNULL(ebt.direcciones_adicional_4, '')
	) AS direcciones_srt,
    (
		ISNULL((
			SELECT STRING_AGG(
				'numero:' + LTRIM(RTRIM(split.value)) + '~tipo:celular', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebt.cell_cyber, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		ISNULL((
			SELECT STRING_AGG(
				'numero:' + LTRIM(RTRIM(split.value)) + '~tipo:celular', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebt.cell_as400, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '')  +
		ISNULL((
			SELECT STRING_AGG(
				'numero:' + LTRIM(RTRIM(split.value)) + '~tipo:casa', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebt.casa, ''), '-') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '') +
		'|numero:' + ISNULL(ebt.tel_oficina_1, '') + '~tipo:oficina' +
		'|numero:' + ISNULL(ebt.tel_oficina_2, '') + '~tipo:oficina'
	) AS telefonos_str,
   	(
		ISNULL((
			SELECT STRING_AGG(
				'correo:' + LTRIM(RTRIM(split.value)) + '~tipo:trabajo', '|'
			)
			FROM STRING_SPLIT(ISNULL(ebt.email_trabajo, ''), ',') AS split
			WHERE LTRIM(RTRIM(split.value)) <> ''
		), '')
	) AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    CONCAT(
        'razon_social:', ISNULL(ebt.trabajo, ''),
        '~direccion:', ISNULL(ebt.direccion_trabajo, ''),
        '~cargo:', ISNULL(ebt.puesto, '')
    ) AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    null AS vehiculos_srt,
    null AS relaciones_str,
    null AS tipo_cliente,
    CONCAT(
        'telefono:', ISNULL(ebt.tel_referencia_1, ''),
        '~nombre:', ISNULL(ebt.referencia_1, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_2, ''),
        '~nombre:', ISNULL(ebt.referencia_2, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_3, ''),
        '~nombre:', ISNULL(ebt.referencia_3, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_4, ''),
        '~nombre:', ISNULL(ebt.referencia_4, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_5, ''),
        '~nombre:', ISNULL(ebt.referencia_5, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_6, ''),
        '~nombre:', ISNULL(ebt.referencia_6, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_7, ''),
        '~nombre:', ISNULL(ebt.referencia_7, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_8, ''),
        '~nombre:', ISNULL(ebt.referencia_8, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_9, ''),
        '~nombre:', ISNULL(ebt.referencia_9, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_10, ''),
        '~nombre:', ISNULL(ebt.referencia_10, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_11, ''),
        '~nombre:', ISNULL(ebt.referencia_11, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_12, ''),
        '~nombre:', ISNULL(ebt.referencia_12, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_13, ''),
        '~nombre:', ISNULL(ebt.referencia_13, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_14, ''),
        '~nombre:', ISNULL(ebt.referencia_14, ''),
		'~relacion:referencia',
		'|telefono:', ISNULL(ebt.tel_referencia_15, ''),
        '~nombre:', ISNULL(ebt.referencia_15, ''),
		'~relacion:referencia'
    ) AS referencias_str,
    ebt.fecha_creacion as fecha_ingreso_oca
FROM dbo.expedientes_bac_tarjeta ebt
INNER JOIN muestra_oca_sac.dbo.remesas_cuentas rc ON rc.no_cuenta = ebt.cuenta
WHERE rc.identificacion_numero IS NOT NULL
AND rc.identificacion_tipo = 'DPI'
AND ebt.fecha_creacion BETWEEN '{start}' AND '{end}';

