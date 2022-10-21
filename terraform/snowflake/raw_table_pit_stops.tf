resource "snowflake_table" "raw_pit_stops" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "PIT_STOPS"
  comment             = "PIT_STOPS raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "json_data"
    type     = "variant"
    nullable = true
  }
  
}