#!/bin/bash
ls /tmp
#exit 0

ls /tmp/outroarquivo

RETURN_CODE=$?

echo "O código de retorno do ls foi $RETURN_CODE"
