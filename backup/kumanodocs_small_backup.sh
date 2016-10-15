#!/bin/sh

BACKUP_TARGET=/var/db/kumanodocs/db.sqlite3
BACKUP_DIR=/var/backup
BACKUP_PATH=${BACKUP_DIR}/small-kumanodocs-$(date +"%Y-%m-&d").sqlite3.gz

# backup localy, don't upload
gzip -c ${BACKUP_TARGET} > ${BACKUP_PATH}
