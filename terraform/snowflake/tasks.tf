resource snowflake_task task_stagging_truncate {
  comment = "task_stagging_truncate"

  database  = snowflake_schema.f1race_raw.database
  schema    = snowflake_schema.f1race_raw.name
  warehouse = "COMPUTE_WH"

  name          = "task_stagging_truncate"
  sql_statement = "call truncate_f1race_stagging(p_force=>true);"

  enabled              = true

}