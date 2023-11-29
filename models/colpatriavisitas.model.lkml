connection: "colpatria"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: colpatriavisitas_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: colpatriavisitas_default_datagroup


explore: visitas {
  join:timelines1{
    type: left_outer
    sql_on: ${visitas.fecha_visita_date}fecha_visita}=${timelines1.semana_date} ;;
    relationship: many_to_many
  }

}
