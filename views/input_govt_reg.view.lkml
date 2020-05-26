view: input_govt_reg {
  sql_table_name: `hackathon1-183523.control_tower_g.Input_Govt_Reg`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: custom_increase {
    type: string
    sql: ${TABLE}.Custom_Increase ;;
  }

  dimension: government_regulation {
    type: string
    sql: ${TABLE}.Government_Regulation ;;
  }

  dimension: regulation__ {
    type: number
    sql: ${TABLE}.Regulation__ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
