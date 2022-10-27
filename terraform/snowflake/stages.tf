# resource "snowflake_stage" "s3_circuits" {
#   name        = "S3_CIRCUITS"
#   url         = "s3://f1race/raw/circuits.csv"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "S3_F1RACE_RAW"
#   file_format         = "FIELD_DELIMITER = |"
# }

resource "snowflake_stage" "s3_circuits" {
  name        = "S3_CIRCUITS"
  url         = "s3://f1race/raw/circuits.csv"
  database    = snowflake_schema.f1race_raw.database
  schema      = snowflake_schema.f1race_raw.name
  storage_integration  = "S3_F1RACE_RAW"
  file_format         = "FIELD_DELIMITER = ',' SKIP_HEADER = 1  NULL_IF = ('NULL','null') empty_field_as_null = TRUE  FIELD_OPTIONALLY_ENCLOSED_BY = \"\" "
}

# resource "snowflake_stage" "s3_races" {
#   name        = "s3_races"
#   url         = "s3://f1race/raw/races.csv"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = snowflake_file_format.csv_file_format.name
# }

# resource "snowflake_stage" "s3_lap_times" {
#   name        = "s3_lap_times"
#   url         = "s3://f1race/raw/lap_times"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = snowflake_file_format.csv_file_format.name
# }

# resource "snowflake_stage" "s3_drivers" {
#   name        = "s3_drivers"
#   url         = "s3://f1race/raw/drivers.json"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = snowflake_file_format.json_file_format.name
# }

# resource "snowflake_stage" "s3_pit_stops" {
#   name        = "s3_pit_stops"
#   url         = "s3://f1race/raw/pit_stops.json"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = snowflake_file_format.json_file_format_1.name
# }

# resource "snowflake_stage" "s3_constructors" {
#   name        = "s3_constructors"
#   url         = "s3://f1race/raw/constructors.json"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = "format_name ='${snowflake_schema.f1race_raw.database}'.'${snowflake_schema.f1race_raw.name}'.'${snowflake_file_format.json_file_format.name}'"
# }

# resource "snowflake_stage" "s3_qualifying" {
#   name        = "s3_qualifying"
#   url         = "s3://f1race/raw/qualifying"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = snowflake_file_format.json_file_format_1.name
# }

# resource "snowflake_stage" "s3_results" {
#   name        = "s3_results"
#   url         = "s3://f1race/raw/results.json"
#   database    = snowflake_schema.f1race_raw.database
#   schema      = snowflake_schema.f1race_raw.name
#   storage_integration  = "s3_f1race_raw"
#   file_format = "${snowflake_file_format.json_file_format.name}"
# }