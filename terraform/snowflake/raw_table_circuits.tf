resource "snowflake_table" "raw_circuits" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "CIRCUITS"
  comment             = "CIRCUITS raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "CIRCUITID"
    type     = "NUMBER(38,0)"
    nullable = true
  }

  
  column {
    name     = "CIRCUITREF"
    type     = "VARCHAR(50)"
    nullable = true
  }

  column {
    name     = "NAME"
    type     = "VARCHAR(100)"
    nullable = true
  }

   column {
    name     = "LOCATION"
    type     = "VARCHAR(100)"
    nullable = true
  }

   column {
    name     = "COUNTRY"
    type     = "VARCHAR(100)"
    nullable = true
  }

  column {
    name = "LAT"
    type = "FLOAT"
    nullable = true
  }

  column {
    name    = "LNG"
    type    = "FLOAT"
    nullable = true
  }

  column {
    name    = "ALT"
    type    = "NUMBER(38,0)"
    nullable = true
  }

  column {
    name    = "URL"
    type    = "VARCHAR(100)"
    nullable = true
  }
}