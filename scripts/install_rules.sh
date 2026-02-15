#!/bin/bash
# Install all auditd rules

# Require root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

RULES_DIR="../rules"

echo "[*] Installing auditd rules..."

for RULE_FILE in $RULES_DIR/*.rules; do
    echo "Applying rules from $RULE_FILE"
    auditctl -R "$RULE_FILE"
done

echo "[*] Reloading auditd rules"
service auditd restart

echo "[*] All rules applied successfully."
