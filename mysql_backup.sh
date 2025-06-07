#!/bin/bash

USER="root"
PASSWORD="yourpassword"
DATABASE="yourdatabase"
BACKUP_DIR="/home/youruser/Desktop/backups/mysql_backup"
LOG_FILE="/home/youruser/Desktop/backups/mysql_backup/mysql_backup.log"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DIR/${DATABASE}_$DATE.sql"


# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Perform backup
mysqldump  -u "$USER" -p"$PASSWORD" "$DATABASE" >"$BACKUP_FILE" 2>>"$LOG_FILE"

# Check if backup succeeded
if [ $? -eq 0 ]; then 
   echo "[$(date)] Backup succeeded: $BACKUP_FILE" >>"$LOG_FILE"
else
   echo "[$(date)] BACKUP FAILED: $DATABASE" >>"$LOG_FILE"
   rm -f "$BACKUP_FILE"
fi
