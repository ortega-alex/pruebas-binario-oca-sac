SELECT
	rc.identificacion_numero AS dni,
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
    CONCAT(inf.nombres, ' ', inf.apellidos) as nombre_completo,
    null as fecha_nacimiento,
    null as estado_civil,
    null as grupo_sanguino,
    null AS genero,
    null as nacionalidad,
    null as discapacidad,
    null as padre,
    null as madre,
    null as conyugue,
	(
		SELECT STRING_AGG('direccion_completa:' + direccion, '|')
		FROM dbo.infor_direcciones
		WHERE id_infornet = inf.id_infornet
	) AS direcciones_srt,
	(
			SELECT STRING_AGG('numero:' + LTRIM(RTRIM(value)), '|')
			FROM STRING_SPLIT((SELECT STRING_AGG(numero_telefono, ' ') FROM  dbo.infor_direcciones WHERE id_infornet = inf.id_infornet), ' ')
	) AS telefonos_str,
   	null AS correos_str,
    null AS fotos_str,
    null AS firmas_str,
    null AS trabajos_str,
    null AS detenciones_str,
    null AS estudios_str,
    null AS licencias_srt,
    (
		SELECT
			STRING_AGG(
				CONCAT(
					'marca:', ISNULL(marca, ''),
					'~modelo:', ISNULL(modelo, ''),
					'~linea:', ISNULL(linea, ''),
					'~color:', ISNULL(color, ''),
					'~placa:', ISNULL(placa, ''),
					'~serie:', ISNULL(serie, '')
				), '|'
			)
		  FROM dbo.infor_vehiculos infv
		  WHERE infv.id_infornet = inf.id_infornet
	) AS vehiculos_srt,
    (
		SELECT
			STRING_AGG(
			  CONCAT('dpi:' ,rcu.identificacion_numero COLLATE Modern_Spanish_CI_AS ,
			  '~nombre_completo:' , infp.Nombres_Pariente , ' ' , infp.Apellidos_Pariente ,
			  '~tipo_relacion:' , LOWER(infp.Parentesco))
			, '|')
		FROM dbo.infor_parentescos infp
		INNER JOIN muestra_oca_sac.dbo.remesas_cuentas rcu ON infp.control COLLATE Modern_Spanish_CI_AS = rcu.control COLLATE Modern_Spanish_CI_AS
		WHERE infp.id_infornet = inf.id_infornet
		AND rcu.identificacion_numero IS NOT NULL
	) AS relaciones_str,
    null AS tipo_cliente,
    null AS referencias_str,
    inf.fecha_creacion as fecha_ingreso_oca
FROM dbo.infornet inf
INNER JOIN muestra_oca_sac.dbo.remesas_cuentas rc ON inf.control COLLATE Modern_Spanish_CI_AS = rc.control COLLATE Modern_Spanish_CI_AS
WHERE rc.identificacion_numero IS NOT NULL
AND rc.identificacion_tipo = 'DPI'
AND inf.fecha_creacion BETWEEN '{start}' AND '{end}';