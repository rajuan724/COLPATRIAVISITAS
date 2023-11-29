view: timelines1 {
  sql_table_name: `VENTA.Timelines1` ;;

  dimension: porcentaje {
    type: number
    sql: ${TABLE}.porcentaje ;;
  }
  dimension_group: semana {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.semana ;;
  }
  dimension: tema {
    type: string
    sql: ${TABLE}.tema ;;
  }
  dimension: tipo {
    primary_key: yes
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}
