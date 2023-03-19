# frozen_string_literal: true

begin
  require_relative '.env'
rescue LoadError
end

require 'sequel/core'

DB = Sequel.connect(
  adapter: :postgres,
  user: 'postgres',
  password: 'password',
  host: 'localhost',
  port: 5050,
  database: 'riskometer_development',
  max_connections: 10
)

# Load Sequel Database/Global extensions here
# DB.extension :date_arithmetic
DB.extension :pg_auto_parameterize if DB.adapter_scheme == :postgres && Sequel::Postgres::USES_PG

# createuser -U postgres riskometer
# createdb -U postgres -O riskometer riskometer_production
#
# createdb -U postgres -O riskometer riskometer_test
# createdb -U postgres -O riskometer riskometer_development
#
