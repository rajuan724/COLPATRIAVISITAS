view: ventas2 {
  sql_table_name: `VENTA.ventas2` ;;

  dimension: area {
    type: number
    sql: ${TABLE}.Area ;;
  }
  dimension: comprador_barrio {
    type: string
    sql: ${TABLE}.CompradorBarrio ;;
  }
  dimension: comprador_cargo {
    type: string
    sql: ${TABLE}.CompradorCargo ;;
  }
  dimension: comprador_ciudad_residencia {
    type: string
    sql: ${TABLE}.CompradorCiudadResidencia ;;
  }
  dimension_group: comprador_fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CompradorFechaCreacion ;;
  }
  dimension_group: comprador_fecha_nacimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CompradorFechaNacimiento ;;
  }
  dimension: comprador_ingresos_mensuales {
    type: number
    sql: ${TABLE}.CompradorIngresosMensuales ;;
  }
  dimension: comprador_numero_hijos {
    type: string
    sql: ${TABLE}.CompradorNumeroHijos ;;
  }
  dimension: comprador_ocupacion {
    type: string
    sql: ${TABLE}.CompradorOcupacion ;;
  }
  dimension: comprador_pais_residencia {
    type: string
    sql: ${TABLE}.CompradorPaisResidencia ;;
  }
  dimension: comprador_profesion {
    type: string
    sql: ${TABLE}.CompradorProfesion ;;
  }
  dimension: comprador_salario {
    type: number
    sql: ${TABLE}.CompradorSalario ;;
  }
  dimension: comprador_tipo_doc {
    type: string
    sql: ${TABLE}.CompradorTipoDoc ;;
  }
  dimension: comprador_tipo_vivienda {
    type: string
    sql: ${TABLE}.CompradorTipoVivienda ;;
  }
  dimension: comprador_zona {
    type: string
    sql: ${TABLE}.CompradorZona ;;
  }
  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }
  dimension: doc_comprador {
    type: string
    sql: ${TABLE}.DocComprador ;;
  }
  dimension: edad {
    type: number
    sql: ${TABLE}.Edad ;;
  }
  dimension: fecha_venta {
    type: string
    sql: ${TABLE}.FechaVenta ;;
  }
  dimension_group: fecha_visita {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaVisita ;;
  }
  dimension: id_comprador {
    type: number
    sql: ${TABLE}.IdComprador ;;
  }
  dimension: id_macro {
    type: number
    sql: ${TABLE}.IdMacro ;;
  }
  dimension: id_proyecto {
    type: string
    sql: ${TABLE}.IdProyecto ;;
  }
  dimension: id_venta {
    type: number
    sql: ${TABLE}.IdVenta ;;
  }
  dimension: id_visita {
    type: number
    sql: ${TABLE}.IdVisita ;;
  }
  dimension: nombre_completo {
    type: string
    sql: ${TABLE}.NombreCompleto ;;
  }
  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.NombreEmpresa ;;
  }
  dimension: origen_informacion_visita {
    type: string
    sql: ${TABLE}.OrigenInformacionVisita ;;
  }
  dimension: proyecto_vitrina_visita {
    type: string
    sql: ${TABLE}.ProyectoVitrinaVisita ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.ValorNeto ;;
  }
  dimension: visita_crm {
    type: number
    sql: ${TABLE}.VisitaCRM ;;
  }
  dimension: vta_entidad_credito {
    type: string
    sql: ${TABLE}.VtaEntidadCredito ;;
  }
  dimension_group: vta_fecha_real {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.VtaFechaReal ;;
  }
  dimension: vta_nombre_macro {
    type: string
    sql: ${TABLE}.VtaNombreMacro ;;
  }
  dimension: vta_nombre_proyecto {
    type: string
    sql: ${TABLE}.VtaNombreProyecto ;;
  }
  measure: count {
    type: count
  }
}
