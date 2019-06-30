#!/bin/sh

BACKUP_DIR=/var/backup
DELETE_TARGET="${BACKUP_DIR}/small-kumanodocs-*.bak.pg"
rm ${DELETE_TARGET}
