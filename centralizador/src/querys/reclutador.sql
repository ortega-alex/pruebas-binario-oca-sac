SELECT 
	semp.dpi AS dpi,
	semp.nit AS nit,
    null AS igss,
    null AS irtra,
    null as cedula,
    null as pasaporte,
    semp.nombre AS primer_nombre,
    semp.nombre2 AS segundo_nombre,
    null as tercer_nombre,
    semp.apellido as primer_apellido,
    semp.apellido2 as segundo_apellido,
    semp.apellido_casada as apellido_casada,
    null as nombre_completo,
    semp.fecha_nacimiento AS fecha_nacimiento,
    semp.estado_civil as estado_civil,
    null as grupo_sanguino,
    CASE 
		WHEN UPPER(semp.sexo) = 'MASCULINO' THEN 'M'
        WHEN UPPER(semp.sexo) = 'FEMENINO' THEN 'F'
        ELSE null
	END AS genero,
    semp.nacionalidad as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
	CONCAT(
		'direccion_completa:', IFNULL(semp.direccion, ''),
        '~municipio:', IFNULL(mun.nombre_muni, ''),
        '~departamento:', IFNULL(dep.nombre_depto, ''),
        '~zona:', IFNULL(semp.zona, '')
	) AS direcciones_srt,
    CONCAT(
		'numero:', IFNULL(semp.telefono_casa, ''), 
        '~tipo:casa',
        '|numero:', IFNULL(semp.celular, ''), 
        '~tipo:celular',
        '|numero:', IFNULL(semp.telefono_emergencia, ''), 
        '~tipo:emergencia',
        '|numero:', IFNULL(semp.telefono_empresa_1, ''), 
        '~tipo:trabajo',
        '|numero:', IFNULL(semp.telefono_empresa_2, ''), 
        '~tipo:trabajo',
		'|numero:', IFNULL(semp.telefono_empresa_3, ''), 
        '~tipo:trabajo'
	) AS telefonos_str,
     CONCAT(
        'correo:', IFNULL(semp.correo_electronico, ''),
        '~tipo:personal'
    ) AS correos_str,
    null AS fotos_str,
    NULL AS firmas_str,
     CONCAT(
        'razon_social:', IFNULL(semp.nombre_empresa_1, ''), 
        '~direccion:', IFNULL(semp.direccion_empresa_1, ''), 
        '~cargo:', IFNULL(semp.puesto_empresa_1, ''), 
        IF (semp.fecha_inicio_empresa_1 IS NOT NULL, CONCAT('~fecha_inicio:', DATE(semp.fecha_inicio_empresa_1)), ''),
        IF (semp.fecha_retiro_empresa_1 IS NOT NULL, CONCAT('~fecha_fin:', DATE(semp.fecha_retiro_empresa_1)), ''),
		'|razon_social:', IFNULL(semp.nombre_empresa_2, ''), 
        '~direccion:', IFNULL(semp.direccion_empresa_2, ''), 
        '~cargo:', IFNULL(semp.puesto_empresa_2, ''), 
        IF (semp.fecha_inicio_empresa_2 IS NOT NULL, CONCAT('~fecha_inicio:', DATE(semp.fecha_inicio_empresa_2)), ''),
        IF (semp.fecha_retiro_empresa_2 IS NOT NULL, CONCAT('~fecha_fin:', DATE(semp.fecha_retiro_empresa_2)), ''),
        '|razon_social:', IFNULL(semp.nombre_empresa_3, ''), 
        '~direccion:', IFNULL(semp.direccion_empresa_3, ''), 
        '~cargo:', IFNULL(semp.puesto_empresa_3, ''), 
        IF (semp.fecha_inicio_empresa_3 IS NOT NULL, CONCAT('~fecha_inicio:', DATE(semp.fecha_inicio_empresa_3)), ''),
        IF (semp.fecha_retiro_empresa_3 IS NOT NULL, CONCAT('~fecha_fin:', DATE(semp.fecha_retiro_empresa_3)), '')
    ) AS trabajos_str,
    null as detenciones_str,
	CONCAT(
        'entidad:', IFNULL(semp.establecimiento_1, ''),
        '~grado:', IFNULL(semp.grado_titulo_1, ''),
        '~periodo:', CONCAT(semp.fecha_de_1, '-', semp.fechas_a_1),
        '|entidad:', IFNULL(semp.establecimiento_2, ''),
        '~grado:', IFNULL(semp.grado_titulo_2, ''),
        '~periodo:', CONCAT(semp.fecha_de_2, '-', semp.fechas_a_2),
        '|entidad:', IFNULL(semp.establecimiento_3, ''),
        '~grado:', IFNULL(semp.grado_titulo_3, ''),
        '~periodo:', CONCAT(semp.fecha_de_3, '-', semp.fechas_a_3),
        '|entidad:', IFNULL(semp.establecimiento_4, ''),
        '~grado:', IFNULL(semp.grado_titulo_4, ''),
        '~periodo:', CONCAT(semp.fecha_de_4, '-', semp.fechas_a_4)
    ) AS estudios_str,
	CONCAT(
        'numero:', IFNULL(semp.no_licencia, ''),
        '~tipo:', IFNULL(semp.clase, '')
    ) AS licencias_srt,
	CONCAT(
        'marca:', IFNULL(semp.marca, ''),             
        '~modelo:', IFNULL(semp.modelo, '')        
    ) AS vehiculos_srt,
    null AS relaciones_str,
	null AS tipo_cliente,
    CONCAT(
        'telefono:', IFNULL(sref.telefono_referencia_1, ''),
        '~nombre:', IFNULL(sref.nombre_referencia_1, ''),
        '~relacion:', IFNULL(sref.relacion_referencia_1, ''),
        '|telefono:', IFNULL(sref.telefono_referencia_2, ''),
        '~nombre:', IFNULL(sref.nombre_referencia_2, ''),
        '~relacion:', IFNULL(sref.relacion_referencia_2, ''),
        '|telefono:', IFNULL(sref.telefono_referencia_3, ''),
        '~nombre:', IFNULL(sref.nombre_referencia_3, ''),
        '~relacion:', IFNULL(sref.relacion_referencia_3, ''),
        '|telefono:', IFNULL(sref.nombre_referencia_1_carta, ''),
        '~nombre:', IFNULL(sref.telefono_referencia_1_carta, ''),
        '~relacion:carta',
        '|telefono:', IFNULL(sref.nombre_referencia_2_carta, ''),
        '~nombre:', IFNULL(sref.telefono_referencia_2_carta, ''),
         '~relacion:carta',
        '|telefono:', IFNULL(sref.nombre_referencia_3_carta, ''),
        '~nombre:', IFNULL(sref.telefono_referencia_3_carta, ''),
         '~relacion:carta'
    ) AS referencias_str,
    semp.fecha_creacion as fecha_ingreso_oca
FROM reclutador.solicitud_empleo semp
LEFT JOIN reclutador.solicitud_empleo_referencias sref ON semp.id_solicitud_candidato = sref.id_solicitud_candidato
LEFT JOIN bpoSystemMuestra.catDepartamento dep ON semp.departamento = dep.id_depto AND dep.id_pais = 1
LEFT JOIN bpoSystemMuestra.catMunicipios mun ON semp.municipio = mun.id_muni AND dep.id_depto = mun.id_depto
WHERE semp.dpi IS NOT NULL
AND semp.fecha_creacion BETWEEN '{start}' AND '{end}';