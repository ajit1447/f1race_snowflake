resource "snowflake_table" "raw_constructors" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "CONSTRUCTORS"
  comment             = "CONSTRUCTORS raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "json_data"
    type     = "VARIANT"
    nullable = true
  }
  
}