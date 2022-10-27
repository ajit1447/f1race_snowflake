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
declare
    force_delete varchar;
    begin
    
    #  case when p_force=true  then
    
    TRUNCATE TABLE IF EXISTS pit_stops;
    TRUNCATE TABLE IF EXISTS constructors;
    TRUNCATE TABLE IF EXISTS circuits;
    TRUNCATE TABLE IF EXISTS lap_times;
    TRUNCATE TABLE IF EXISTS drivers;
    TRUNCATE TABLE IF EXISTS results;
    TRUNCATE TABLE IF EXISTS qualifying;
    TRUNCATE TABLE IF EXISTS races;
    force_delete:= ''force true'';
    # else
    delete from pit_stops;
    delete from constructors;
    delete from circuits;
    delete from lap_times;
    delete from drivers;
    delete from results;
    delete from qualifying;
    delete from races;
    force_delete:= ''force false'';
    # end;
    
     return force_delete;
    
    end;'
EOT
}