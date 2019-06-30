#!/bin/sh

BACKUP_DIR=/var/backup
BACKUP_PATH=${BACKUP_DIR}/kumanodocs-$(date +"%Y-%m-&d").bak.pg

# backup localy and upload to dropbox
pg_dump -U kd -T users -aFc kumanodocs > ${BACKUP_PATH}
/app/upload_dropbox.py ${BACKUP_PATH}
