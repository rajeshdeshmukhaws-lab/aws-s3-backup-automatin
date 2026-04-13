# AWS S3 Automated Backup System

This project automates the process of backing up local directories from an EC2 instance to an Amazon S3 bucket using Bash scripting and CronJobs.

## Features
- *Automated Compression:* Uses tar to compress data.
- *S3 Integration:* Securely uploads backups to AWS S3.
- *Monitoring:* Integrated with AWS SNS for email notifications.
- *Scheduling:* Automated using Linux Crontab.

## How to use
1. Clone this repository.
2. Give execution permission: chmod +x backup.sh
3. Update the S3 bucket name in the script.
4. Set up a CronJob using crontab -e.
