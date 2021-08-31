#!/bin/bash

git config --global user.name "${GOLLUM_USER}"
git config --global user.email ${GOLLUM_EMAIL}

gollum --port ${GOLLUM_PORT} --config /config.rb --lenient-tag-lookup
