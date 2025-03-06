#!/bin/bash

for user in $(ls /home/account/mail/domain/* -d | awk -F '/' '{print $NF"@"$(NF-1)}'); do
    echo "Moving from: $user"
	doveadm move -u "$user" 'INBOX.Trash' MAILBOX 'INBOX' unseen savedbefore 3w
	doveadm move -u "$user" 'INBOX.Trash' MAILBOX 'INBOX.Drafts' 'all'
done