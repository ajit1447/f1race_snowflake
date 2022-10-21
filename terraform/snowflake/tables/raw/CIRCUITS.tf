resource "snowflake_table" "table" {
  database            = snowflake_schema.f1race_raw.database
  schema              = snowflake_schema.f1race_raw.name
  name                = "CIRCUITS"
  comment             = "CIRCUITS raw table"
  data_retention_days = snowflake_schema.f1race_raw.data_retention_days
  change_tracking     = false

  column {
    name     = "CIRCUITID"
    type     = "int"
    nullable = true
  }

  
  column {
    name     = "CIRCUITREF"
    type     = "varchar(50)"
    nullable = true
  }

  column {
    name     = "NAME"
    type     = "varchar(100)"
    nullable = true
  }

   column {
    name     = "LOCATION"
    type     = "varchar(100)"
    nullable = true
  }

   column {
    name     = "COUNTRY"
    type     = "varchar(100)"
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
    type    = "INT"
    nullable = true
  }

  column {
    name    = "URL"
    type    = "varchar(100)"
    nullable = true
  }
}