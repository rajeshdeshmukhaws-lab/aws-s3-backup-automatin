#!/bin/bash
# Define variables
SOURCE_DIR="/var/www/html"  # The folder you want to back up
BUCKET_NAME="linux-engineer-backups-2026"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup-$TIMESTAMP.tar.gz"

# Create a compressed tarball
tar -czf /tmp/$BACKUP_NAME $SOURCE_DIR

# Upload to S3 using AWS CLI
aws s3 cp /tmp/$BACKUP_NAME s3://$BUCKET_NAME/

# Clean up local file
rm /tmp/$BACKUP_NAME

echo "Backup uploaded successfully at $TIMESTAMP"
