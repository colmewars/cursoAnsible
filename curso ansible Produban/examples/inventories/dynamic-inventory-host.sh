#!/bin/bash
if [ "$1" == "--host" ]; then
cat <<EOF
{
  "database_name": "db1"
  "env": "staging"
}
EOF
fi
