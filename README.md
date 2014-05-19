buylocally
==========

ETSY clone for French market developed by a team of three Rails junior devs

# 1. Start by setting up a database.yml file in config :

default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5

development:
  <<: *default
  database: buylocally_development

test:
  <<: *default
  database: buylocally_test

production:
  <<: *default
  database: buylocally_production
  username: buylocally
  password: <%= ENV['BUYLOCALLY_DATABASE_PASSWORD'] %>
