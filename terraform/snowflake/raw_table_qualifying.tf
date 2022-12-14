resource "snowflake_table" "raw_qualifying" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "QUALIFYING"
  comment             = "QUALIFYING raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "json_data"
    type     = "VARIANT"
    nullable = true
  }
  
}