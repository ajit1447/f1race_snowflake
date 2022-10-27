resource "snowflake_procedure" "proc" {
  name     = "TRUNCATE_F1RACE_STAGGING"
  database = snowflake_schema.f1race_raw.database
  schema   = snowflake_schema.f1race_raw.name
  language = "SQL"
  arguments {
    name = "p_force"
    type = "boolean"
  }
  comment             = "Procedure to truncate stagging table"
  return_type         = "VARCHAR"
  execute_as          = "OWNER"
  return_behavior     = "IMMUTABLE"
  null_input_behavior = "RETURNS NULL ON NULL INPUT"
  statement           = <<EOT

    begin
    
    
    TRUNCATE TABLE IF EXISTS pit_stops;
    TRUNCATE TABLE IF EXISTS constructors;
    TRUNCATE TABLE IF EXISTS circuits;
    TRUNCATE TABLE IF EXISTS lap_times;
    TRUNCATE TABLE IF EXISTS drivers;
    TRUNCATE TABLE IF EXISTS results;
    TRUNCATE TABLE IF EXISTS qualifying;
    TRUNCATE TABLE IF EXISTS races;
    
    end;
EOT
}