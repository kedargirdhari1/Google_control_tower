view: new_scenario_modeling {
  sql_table_name: `hackathon1-183523.control_tower_g.New_Scenario_Modeling`
    ;;

  dimension: active_offices {
    type: number
    sql: ${TABLE}.Active_Offices ;;
  }

  dimension: cost_to_serve {
    type: number
    sql: ${TABLE}.Cost_To_Serve ;;
  }

  dimension: customer_experience {
    type: number
    sql: ${TABLE}.Customer_Experience ;;
  }

  dimension: on_premise {
    type: number
    sql: ${TABLE}.On_Premise ;;
  }

  dimension: resilience_score {
    type: number
    sql: ${TABLE}.Resilience_Score ;;
  }

  dimension: scenario_name {
    type: string
    sql: ${TABLE}.Scenario_Name ;;
  }

  dimension: total_offices {
    type: number
    sql: ${TABLE}.Total_Offices ;;
  }

  dimension: total_transactions {
    type: number
    sql: ${TABLE}.Total_Transactions ;;
  }

  dimension: total_workforce {
    type: number
    sql: ${TABLE}.Total_Workforce ;;
  }

  dimension: virtual {
    type: number
    sql: ${TABLE}.Virtual ;;
  }

  measure: count {
    type: count
    drill_fields: [scenario_name]
  }
}
