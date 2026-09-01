#!/usr/bin/env bash

printf "\n====== SCANNING FOR CREDIT CARD NUMBERS ======\n"
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "========= CREDIT CARD SCAN COMPLETE =========="

cat << 'EOF' >> scripts/scan.sh

printf "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ====\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "======= SOCIAL SECURITY SCAN COMPLETE ========"
EOF
printf "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ====\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "======= SOCIAL SECURITY SCAN COMPLETE ========"

cat << 'EOF' >> scripts/scan.sh

printf "\n========= SCANNING FOR PHONE NUMBERS =========\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "========= PHONE NUMBER SCAN COMPLETE ========="
EOF
printf "\n==== SCANNING FOR SOCIAL SECURITY NUMBERS ====\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "======= SOCIAL SECURITY SCAN COMPLETE ========"

printf "\n========= SCANNING FOR PHONE NUMBERS =========\n"
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}\) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "========= PHONE NUMBER SCAN COMPLETE ========="
