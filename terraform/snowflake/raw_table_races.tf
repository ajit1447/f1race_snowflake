resource "snowflake_table" "raw_races" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "RACES"
  comment             = "RACES raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "RACEID"
    type     = "int"
    nullable = true
  }

  column {
    name     = "YEAR"
    type     = "int"
    nullable = true
  }

  column {
    name     = "ROUND"
    type     = "int"
    nullable = true
  }

  column {
    name     = "CIRCUITID"
    type     = "int"
    nullable = true
  }
  
  column {
    name     = "NAME"
    type     = "varchar(100)"
    nullable = true
  }

  column {
    name     = "DATE"
    type     = "date"
    nullable = true
  }

  column {
    name     = "TIME"
    type     = "varchar(100)"
    nullable = true
  }

  column {
    name     = "URL"
    type     = "varchar(200)"
    nullable = true
  }
  
}



