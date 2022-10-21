resource "snowflake_table" "raw_lap_times" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "LAP_TIMES"
  comment             = "LAP_TIMES raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "RACEID"
    type     = "int"
    nullable = true
  }

  column {
    name     = "DRIVERID"
    type     = "int"
    nullable = true
  }

  column {
    name     = "LAP"
    type     = "int"
    nullable = true
  }

  column {
    name     = "POSITION"
    type     = "int"
    nullable = true
  }

  column {
    name     = "TIME"
    type     = "varchar(50)"
    nullable = true
  }

  column {
    name     = "MILISECONDS"
    type     = "int"
    nullable = true
  }
  
}