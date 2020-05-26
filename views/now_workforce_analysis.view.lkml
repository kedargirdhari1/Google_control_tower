view: now_workforce_analysis {
  sql_table_name: `hackathon1-183523.control_tower_g.Now_Workforce_Analysis`
    ;;

  dimension: automation_potential {
    type: number
    sql: ${TABLE}.Automation_Potential ;;

  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: cost_to_serve {
    type: number
    sql: ${TABLE}.Cost_to_serve ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
    drill_fields: [location]
  }

  dimension: covid_flag {
    type: string
    sql: ${TABLE}.Covid_Flag ;;
  }

  dimension: criticality {
    type: string
    sql: ${TABLE}.Criticality ;;
  }

  dimension: customer_experience {
    type: number
    sql: ${TABLE}.Customer_Experience ;;
  }

  dimension_group: date_ {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_ ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }
dimension: city {
  type: string
  sql: ${TABLE}.location ;;
}
  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: prevention_possibility_score {
    type: number
    sql: ${TABLE}.Prevention_Possibility_Score ;;
  }

  dimension: process_re_engineering_index {
    type: number
    sql: ${TABLE}.Process_Re_engineering_Index ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: resilience {
    type: number
    sql: ${TABLE}.Resilience ;;
  }

  dimension: self_service_score {
    type: number
    sql: ${TABLE}.Self_Service_Score ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: total_customer_transaction {
    type: number
    sql: ${TABLE}.Total_Customer_Transaction ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.Transaction_Type ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  dimension: work_force {
    type: number
    sql: ${TABLE}.WorkForce ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
