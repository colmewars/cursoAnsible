#!/bin/bash
if [ "$1" == "--list" ] ; then
cat<<EOF
{
  "databases": {
        "hosts": [
          "vagrant1"
        ],
        "vars": {
          "database_engine": "postgresql"
        }
  },
  "_meta": {
        "hostvars": {
          "vagrant1": {
                "database_name": "db1"
          }
        }
  }
} 
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {"hostvars": {}}}'
else
  echo "{ }"
fi
