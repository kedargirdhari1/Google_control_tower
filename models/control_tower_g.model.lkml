connection: "control_tower_g"

datagroup: control_tower_g_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: control_tower_g_default_datagroup

include: "/views/**/*.view"
explore: near_transaction_analysis {}
explore: now_workforce_analysis {}
explore:  input_govt_reg{}
explore: new_scenario_modeling {}
explore: input_critical_transactions {}
explore: scenario_details {}
