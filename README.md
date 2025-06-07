# MySQL Backup Script

This Bash script automates the process of backing up a MySQL database and logs the success or failure of each backup.

## 📦 Features

- Backs up a specified MySQL database using `mysqldump`
- Automatically timestamps each backup file
- Logs both successful and failed backups
- Automatically creates the backup directory if it doesn't exist
- Secure authentication support using `~/.my.cnf` (optional)

## 🧾 Requirements

- MySQL installed and accessible via terminal
- User with privileges to access the target database
- `mysqldump` utility

## 🔧 Configuration

Edit the script variables at the top of `mysql_backup.sh`:

```bash
DATABASE="user_db"
BACKUP_DIR="/home/youruser/Desktop/backups/mysql_backup"
LOG_FILE="/home/youruser/Desktop/backups/mysql_backup/mysql_backup.log"
