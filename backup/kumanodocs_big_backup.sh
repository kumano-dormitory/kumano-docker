#!/bin/sh

BACKUP_TARGET=/var/db/kumanodocs/db.sqlite3
BACKUP_DIR=/var/backup
BACKUP_PATH=${BACKUP_DIR}/kumanodocs-$(date +"%Y-%m-&d").sqlite3.gz

# backup localy and upload to dropbox
gzip -c ${BACKUP_TARGET} > ${BACKUP_PATH}
/app/upload_dropbox.py ${BACKUP_PATH}
