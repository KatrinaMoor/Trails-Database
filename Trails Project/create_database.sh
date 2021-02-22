export PGPASSWORD='postgres1'

psql -U postgres -d trails -f "./create_DB_trails.sql" &&
psql -U postgres -d trails -f "./create_DB_tables" 