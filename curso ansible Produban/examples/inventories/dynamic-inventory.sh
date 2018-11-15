#!/bin/bash
if [ "$1" == "--list" ] ; then
cat<<EOF
{
  "databases": {
	"hosts": [
	  "vagrant1",
	  "vagrant2"
	],
	"vars": {
	  "database_engine": "postgresql"
	}
  },
  "_meta": {
	"hostvars": {
	  "vagrant1": {
		"database_name": "db1"
	  },
	  "vagrant2": {
		"database_name": "db2"
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
