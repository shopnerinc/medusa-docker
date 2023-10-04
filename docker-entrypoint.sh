#! /bin/bash

./node_modules/.bin/medusa migrations run

./node_modules/.bin/medusa "$1"
