# Email Cleanup Automation Script for WHM/cPanel

## Description
Script developed to automate the process of cleaning trash and moving unread emails to the trash in all email accounts configured on WHM/cPanel.

## What it does
### empty_trash.sh
- Locates all email accounts.
- Cleans the trash of each account, permanently deleting emails.

### move_trash.sh
- Moves all unread emails older than 3 weeks to the trash.
- Also moves emails stored in the draft folder.

## Configuration
1. Edit the script to change the `account` and `domain` variables to your respective information.
2. Ensure the scripts have execution permission.

```bash
chmod +x empty_trash.sh move_trash.sh
```

## Execution
Run the script directly on the WHM terminal with appropriate permissions.

```bash
./empty_trash.sh
./move_trash.sh
```

## Compatibility
- Tested with cPanel version 118.0.38
