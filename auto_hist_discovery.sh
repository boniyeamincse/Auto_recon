#!/bin/bash

# Boni Recon - Auto Network Discovery using Nmap
# Author: boniyeamincse

# Banner
echo "========================================="
echo "           Boni Recon                    "
echo "   Auto Network Discovery using Nmap     "
echo "========================================="

# Step 1: Input IP block
read -p "Enter the IP block (e.g., 192.168.1.0/24): " IP_BLOCK

# Step 2: Install dependencies (Nmap)
echo "Installing dependencies..."
if ! command -v nmap &> /dev/null
then
    echo "Nmap not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y nmap
else
    echo "Nmap is already installed."
fi

# Step 3: Run the Nmap scan
# Create a directory for the results#!/bin/bash

# Boni Recon - Auto Network Discovery using Nmap
# Author: boniyeamincse

# Function to print colored banners
print_banner() {
    echo -e "\e[1;34m=========================================\e[0m"
    echo -e "\e[1;32m           Boni Recon                    \e[0m"
    echo -e "\e[1;34m   Auto Network Discovery using Nmap     \e[0m"
    echo -e "\e[1;34m=========================================\e[0m"
}

# Print the banner
print_banner

# Step 1: Input IP block
read -p "Enter the IP block (e.g., 192.168.1.0/24): " IP_BLOCK

# Step 2: Install dependencies (Nmap)
echo -e "\e[1;33mInstalling dependencies...\e[0m"
if ! command -v nmap &> /dev/null
then
    echo -e "\e[1;31mNmap not found. Installing...\e[0m"
    sudo apt-get update
    sudo apt-get install -y nmap
else
    echo -e "\e[1;32mNmap is already installed.\e[0m"
fi

# Step 3: Run the Nmap scan
# Create a directory for the results
RESULTS_DIR="results_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RESULTS_DIR"

# Perform the Nmap scan and save the output
echo -e "\e[1;33mRunning Nmap scan on $IP_BLOCK...\e[0m"
nmap -sP "$IP_BLOCK" | grep "Nmap scan report for" | awk '{print $5}' > "$RESULTS_DIR/IPS_list.txt"

# Create block-wise folders and save IPs
while read -r IP; do
  BLOCK=$(echo "$IP" | cut -d'.' -f1-3)
  mkdir -p "$RESULTS_DIR/$BLOCK"
  echo "$IP" >> "$RESULTS_DIR/$BLOCK/IPs_list.txt"
done < "$RESULTS_DIR/IPS_list.txt"

echo -e "\e[1;32mScan completed. Results saved in $RESULTS_DIR\e[0m"

# Step 4: Exit
echo -e "\e[1;31mExiting...\e[0m"
RESULTS_DIR="results_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RESULTS_DIR"

# Perform the Nmap scan and save the output
echo "Running Nmap scan on $IP_BLOCK..."
nmap -sP "$IP_BLOCK" | grep "Nmap scan report for" | awk '{print $5}' > "$RESULTS_DIR/IPS_list.txt"

# Create block-wise folders and save IPs
while read -r IP; do
  BLOCK=$(echo "$IP" | cut -d'.' -f1-3)
  mkdir -p "$RESULTS_DIR/$BLOCK"
  echo "$IP" >> "$RESULTS_DIR/$BLOCK/IPs_list.txt"
done < "$RESULTS_DIR/IPS_list.txt"

echo "Scan completed. Results saved in $RESULTS_DIR"

# Step 4: Exit
echo "Exiting..."
exit 0