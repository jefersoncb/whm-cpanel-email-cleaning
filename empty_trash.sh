#!/bin/bash

for user in $(ls /home/account/mail/domain/* -d | awk -F '/' '{print $NF"@"$(NF-1)}'); do
    echo "Emptying the trash can: $user"
    doveadm expunge -u "$user" mailbox INBOX.Trash all
done