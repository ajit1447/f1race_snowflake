resource "snowflake_file_format" "csv_file_format" {
  name        = "csv_file_format"
  database    = snowflake_schema.f1race_raw.database
  schema      = snowflake_schema.f1race_raw.name
  format_type = "CSV"
  field_delimiter = ","
  skip_header = 1
  null_if = ["NULL","null"]
  empty_field_as_null = true
  field_optionally_enclosed_by = "\""
  compression = "AUTO"
  record_delimiter = "\n"
  binary_format = "HEX"
  escape = "NONE"
  escape_unenclosed_field = "\\"
}



resource "snowflake_file_format" "json_file_format" {
  name        = "json_file_format"
  database    = snowflake_schema.f1race_raw.database
  schema      = snowflake_schema.f1race_raw.name
  format_type = "JSON"
  compression = "AUTO"
  binary_format = "HEX"
}

resource "snowflake_file_format" "json_file_format_1" {
  name        = "json_file_format_1"
  database    = snowflake_schema.f1race_raw.database
  schema      = snowflake_schema.f1race_raw.name
  format_type = "JSON"
  strip_outer_array = true
  compression = "AUTO"
  binary_format = "HEX"
}
    
    
    
    