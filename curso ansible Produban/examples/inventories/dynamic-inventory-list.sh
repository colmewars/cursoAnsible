#!/bin/bash
if [ "$1" == "--list" ]; then
cat <<EOF
{
  "databases": ["vagrant1", "vagrant2"]
}
EOF
fi
