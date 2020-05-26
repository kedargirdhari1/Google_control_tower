view: near_transaction_analysis {
  sql_table_name: `hackathon1-183523.control_tower_g.Near_Transaction_Analysis`
    ;;

  dimension: cost_to_serve {
    type: number
    sql: ${TABLE}.Cost_To_Serve ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: criticality {
    type: string
    sql: ${TABLE}.Criticality ;;
  }

  dimension: customer_experience {
    type: number
    sql: ${TABLE}.Customer_Experience ;;
  }

  dimension: kpi {
    type: string
    sql: ${TABLE}.KPI ;;
    link: {url:"https://accenture.looker.com/looks/218"
      label:"Click here to change x axis measure"}
  }

  dimension: kpi_image {
    type: string
    sql: ${TABLE}.KPI_Image ;;
  }

  dimension: looker_image {
    type: string
    sql: concat(${TABLE}.KPI_Image,".png") ;;
    html: <img src="https://storage.googleapis.com/control_tower-g/Icons/{{value}}" /> ;;
  }

  dimension: kpi_value {
    type: number
    sql: ${TABLE}.KPI_Value ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: resilience_score {
    type: number
    sql: ${TABLE}.Resilience_Score ;;
  }

  dimension: total_critical_transaction {
    type: number
    sql: ${TABLE}.Total_Critical_Transaction ;;
  }

  dimension: total_transaction {
    type: number
    sql: ${TABLE}.Total_Transaction ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
