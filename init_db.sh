#!/bin/bash
set -e
mongo --host mongo markazuna --eval 'db.createUser({user:"admin",pwd:"password@2020",roles:["readWrite"],mechanisms:["SCRAM-SHA-1"]});'
RAILS_ENV='production' bundle exec rails db:seed