# Boni Recon - User Guide

## Introduction

**Boni Recon** is an automated network discovery tool that utilizes Nmap to scan IP blocks, organize results, and save them in a structured manner. This guide explains how to use the tool and provides an overview of its features.

## Features

1. **Network Discovery**:
   - Input an IP block for scanning.
   - Perform Nmap scans and save output results.
   - Organize results by creating block-wise folders.

2. **Dependency Installation**:
   - Automatically checks for and installs Nmap if it's not already installed.

3. **User-Friendly Interface**:
   - Interactive prompts for user input.
   - Clear completion messages.

## Prerequisites

- A Unix-like operating system (Linux, macOS).
- `sudo` privileges for installing dependencies.
- Internet connection for installing Nmap if not already installed.

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/boniyeamincse/Auto_recon.git
   cd Auto_recon
   ```

2. **Make the Script Executable**:
   ```bash
   chmod +x auto_hist_discovery.sh
   ```

## Usage

1. **Run the Script**:
   ```bash
   ./auto_hist_discovery.sh
   ```

2. **Input the IP Block**:
   - When prompted, enter the IP block you want to scan. For example, `192.168.1.0/24`.

3. **Wait for the Scan to Complete**:
   - The script will check if Nmap is installed and install it if necessary.
   - It will then perform the Nmap ping scan on the provided IP block.
   - The results will be saved in a directory named `results_<timestamp>`.

4. **View the Results**:
   - Navigate to the results directory created by the script.
   - You will find a file named `IPS_list.txt` containing all discovered IPs.
   - Block-wise folders will be created, each containing an `IPs_list.txt` file with the respective IP addresses.

## Example

```bash
$ ./auto_hist_discovery.sh
=========================================
           Boni Recon                    
   Auto Network Discovery using Nmap     
=========================================
Enter the IP block (e.g., 192.168.1.0/24): 192.168.1.0/24
Installing dependencies...
Nmap is already installed.
Running Nmap scan on 192.168.1.0/24...
Scan completed. Results saved in results_20250317_044041
Exiting...
```

## Future Development

### Planned Features

1. **Enhanced Scanning Options**:
   - Service detection and OS detection.
   - Support for multiple subnets in a single run.

2. **Reporting and Visualization**:
   - HTML reports and visualization of scan results.

3. **Integration with Other Tools**:
   - Integration with vulnerability scanners and notification systems.

4. **Advanced Configuration**:
   - Configuration files for specifying scan settings.
   - Support for custom scripts.

5. **Performance Improvements**:
   - Parallel scanning for faster discovery.
   - Resource optimization for large-scale scans.

6. **Security Enhancements**:
   - Support for authenticated scans.
   - Secure storage of sensitive information.

7. **User Experience**:
   - Interactive web dashboard.
   - Additional command-line options for advanced users.

8. **Documentation and Support**:
   - Comprehensive documentation.
   - Community support channels.

## Conclusion

Boni Recon simplifies the network discovery process using Nmap. By following this guide, you can effectively scan IP blocks and organize the results. Stay tuned for future updates and enhancements to make Boni Recon even more powerful and versatile.
