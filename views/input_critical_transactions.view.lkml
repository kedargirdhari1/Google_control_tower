view: input_critical_transactions {
  sql_table_name: `hackathon1-183523.control_tower_g.Input_Critical_Transactions`
    ;;

  dimension: criticilaity_level {
    type: string
    sql: ${TABLE}.Criticilaity_Level ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.Total_Count ;;
  }

  dimension: transaction_criticality {
    type: string
    sql: ${TABLE}.Transaction_Criticality ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.Transaction_Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
