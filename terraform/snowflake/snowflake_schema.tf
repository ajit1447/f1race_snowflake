resource "snowflake_schema" "f1race_raw" {
  database            = snowflake_database.f1race_db_prod.name
  name                = "f1race_raw"
  data_retention_days = 1
}