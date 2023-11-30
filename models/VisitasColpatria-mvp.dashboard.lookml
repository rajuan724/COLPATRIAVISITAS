---
- dashboard: visitascolpatriamvp
  title: VisitasColpatria-mvp
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dHyPWc6ho5g57jYKmlM5pi
  elements:
  - title: Lead Visita
    name: Lead Visita
    model: colpatriavisitas
    explore: visitas
    type: looker_column
    fields: [visitas.count, visitas.nombre_lead_visita]
    sorts: [visitas.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: visitas.count, id: visitas.count,
            name: Visitas}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      visitas.count: "#EA4335"
    defaults_version: 1
    listen:
      Fecha Visita Week: visitas.fecha_visita_week
      Ciudad Visita: visitas.ciudad_visita
      Macroproyecto: visitas.nombre_macroproyecto
    row: 9
    col: 8
    width: 9
    height: 6
  - title: Categorización Visita
    name: Categorización Visita
    model: colpatriavisitas
    explore: visitas
    type: looker_pie
    fields: [visitas.categoria, visitas.count]
    sorts: [visitas.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Sin informacion: "#FF8168"
      Visita Comprador: "#EA4335"
      Venta Visita: "#80868B"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Fecha Visita Week: visitas.fecha_visita_week
      Ciudad Visita: visitas.ciudad_visita
      Macroproyecto: visitas.nombre_macroproyecto
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Timeline Temas
    name: Timeline Temas
    model: colpatriavisitas
    explore: visitas
    type: looker_line
    fields: [average_of_porcentaje, timelines1.tipo, timelines1.semana_week]
    pivots: [timelines1.tipo]
    fill_fields: [timelines1.semana_week]
    sorts: [timelines1.tipo, timelines1.semana_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Average of Porcentaje
      value_format:
      value_format_name: decimal_1
      based_on: timelines1.porcentaje
      _kind_hint: measure
      measure: average_of_porcentaje
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: visitas.count, id: visitas.count,
            name: Visitas}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      visitas.count: "#EA4335"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Tema: timelines1.tema
      Fecha Visita Week: visitas.fecha_visita_week
    row: 3
    col: 0
    width: 12
    height: 6
  - title: Timeline Visitas
    name: Timeline Visitas
    model: colpatriavisitas
    explore: visitas
    type: looker_line
    fields: [visitas.count, visitas.fecha_visita_week]
    fill_fields: [visitas.fecha_visita_week]
    sorts: [visitas.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: visitas.count, id: visitas.count,
            name: Visitas}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Sin informacion: "#FF8168"
      Visita Comprador: "#EA4335"
      Venta Visita: "#80868B"
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Fecha Visita Week: visitas.fecha_visita_week
      Ciudad Visita: visitas.ciudad_visita
      Macroproyecto: visitas.nombre_macroproyecto
    row: 3
    col: 12
    width: 12
    height: 6
  - title: Origen Información Visita
    name: Origen Información Visita
    model: colpatriavisitas
    explore: visitas
    type: looker_grid
    fields: [visitas.count, visitas.origen_informacion_visita]
    sorts: [visitas.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      visitas.count:
        is_active: true
        palette:
          palette_id: 13438e2e-de77-f865-575d-93346227cfd6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e3808c"
          - "#da111c"
    value_labels: legend
    label_type: labPer
    series_colors:
      Sin informacion: "#FF8168"
      Visita Comprador: "#EA4335"
      Venta Visita: "#80868B"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Fecha Visita Week: visitas.fecha_visita_week
      Ciudad Visita: visitas.ciudad_visita
      Macroproyecto: visitas.nombre_macroproyecto
    row: 9
    col: 17
    width: 7
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "## Visitas Constructora Colpatria"
    row: 0
    col: 8
    width: 8
    height: 2
  - type: button
    name: button_129
    rich_content_json: '{"text":"Ventas Constructora Colpatria","description":"","newTab":false,"alignment":"center","size":"small","style":"FILLED","color":"#EA4335","href":"https://3b429a66-8f24-414c-9e7b-6424a06bb99c.looker.app/dashboards/7?Tema=ArriendoCompra&Departamento=&Comprador+Ciudad+Residencia=&Macroproyecto="}'
    row: 2
    col: 0
    width: 24
    height: 1
  filters:
  - name: Tema
    title: Tema
    type: field_filter
    default_value: ArriendoCompra
    allow_multiple_values: true
    required: true
    ui_config:
      type: checkboxes
      display: popover
    model: colpatriavisitas
    explore: visitas
    listens_to_filters: [Fecha Visita Week]
    field: timelines1.tema
  - name: Fecha Visita Week
    title: Fecha Visita Week
    type: field_filter
    default_value: 2023/11/29 to 2023/11/30
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: colpatriavisitas
    explore: visitas
    listens_to_filters: []
    field: visitas.fecha_visita_week
  - name: Ciudad Visita
    title: Ciudad Visita
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: colpatriavisitas
    explore: visitas
    listens_to_filters: [Fecha Visita Week, Macroproyecto]
    field: visitas.ciudad_visita
  - name: Macroproyecto
    title: Macroproyecto
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: colpatriavisitas
    explore: visitas
    listens_to_filters: [Fecha Visita Week, Ciudad Visita]
    field: visitas.nombre_macroproyecto
