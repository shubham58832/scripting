#!/bin/bash

backup_dir="/script_demo/backups"
source_dir="/script_demo/data"

tar -cvzf "$backup_dir/backup_$(date +%y%m%d_%H%M%S).tar.gz" "$source_dir"




