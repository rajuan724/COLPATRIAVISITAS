view: mapas1 {
  sql_table_name: `VENTA.Mapas1` ;;

  dimension: porcentaje {
    type: number
    sql: ${TABLE}.porcentaje ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: tema {
    type: string
    sql: ${TABLE}.tema ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}
