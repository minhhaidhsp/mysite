#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
./bin/rails generate dockerfile
./bin/rails assets:precompile
./bin/rails assets:clean