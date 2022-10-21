terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}


provider "snowflake" {
  role  = "ACCOUNTADMIN"
  account=var.account
  username=var.username
  password=var.password
}
