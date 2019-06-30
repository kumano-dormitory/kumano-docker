#!/bin/sh

BACKUP_DIR=/var/backup
BACKUP_PATH=${BACKUP_DIR}/small-kumanodocs-$(date +"%Y-%m-&d").bak.pg

# backup localy, don't upload
pg_dump -U kd -T users -aFc kumanodocs > ${BACKUP_PATH}
