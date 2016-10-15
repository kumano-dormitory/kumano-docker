#!/bin/sh

BACKUP_DIR=/var/backup
DELETE_TARGET="${BACKUP_DIR}/small-kumanodocs-*.sqlite3.gz"
rm ${DELETE_TARGET}
