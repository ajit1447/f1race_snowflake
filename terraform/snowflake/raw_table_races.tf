resource "snowflake_table" "raw_races" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "RACES"
  comment             = "RACES raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "RACEID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "YEAR"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "ROUND"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name     = "CIRCUITID"
    type     = "NUMBER(38,0)"
    nullable = true
  }
  
  column {
    name     = "NAME"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "DATE"
    type     = "DATE"
    nullable = true
  }

  column {
    name     = "TIME"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name     = "URL"
    type     = "VARCHAR(200)"
    nullable = true
  }
  
}