view: scenario_details {
  sql_table_name: `hackathon1-183523.control_tower_g.Scenario_details`
    ;;

  dimension: cost_to_serve {
    type: number
    sql: ${TABLE}.Cost_to_serve ;;
  }

  dimension: critical_flag {
    type: number
    sql: ${TABLE}.Critical_Flag ;;
  }

  dimension: customer_experience {
    type: number
    sql: ${TABLE}.Customer_Experience ;;
  }

  dimension: resilience {
    type: number
    sql: ${TABLE}.Resilience ;;
  }

  dimension: scenario {
    type: string
    sql: ${TABLE}.Scenario ;;
  }

  dimension: total_customer_transaction {
    type: number
    sql: ${TABLE}.Total_Customer_Transaction ;;
  }

  dimension: transaction_simulator {
    type: number
    sql: ${TABLE}.Transaction_Simulator ;;
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
