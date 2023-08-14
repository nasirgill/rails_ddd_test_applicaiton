#!/usr/bin/env bash

RAILS_ENV=development_2 rake db:prepare
rake db:prepare
rake db:migrate
RAILS_ENV=test rake setup_db_config
rake setup_db_config
