# Server Performance Stats

A Bash script to analyze basic server performance statistics on a Linux server.

## Features

The script displays:

* Total CPU usage
* Total memory usage
* Used and free memory
* Memory usage percentage
* Total disk usage
* Used and free disk space
* Disk usage percentage
* Top 5 processes by CPU usage
* Top 5 processes by memory usage

### Additional Statistics

* Operating system version
* System uptime
* Load average
* Number of logged-in users

## Requirements

* Linux operating system
* Bash shell
* Basic Linux commands:

  * `top`
  * `free`
  * `df`
  * `ps`
  * `awk`

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/server-performance-stats.git
```

Move into the project directory:

```bash
cd server-performance-stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

## Usage

Run the script:

```bash
./server-stats.sh
```

## Example Output

```text
==========================================
       SERVER PERFORMANCE STATISTICS
==========================================

CPU Usage:
Total CPU Usage: 12.5%

Memory Usage:
Total Memory: 7845 MB
Used Memory : 2450 MB (31%)
Free Memory : 3100 MB

Disk Usage:
Total Disk: 100G
Used Disk : 40G (40%)
Free Disk : 60G

Top 5 Processes by CPU Usage:

PID    PPID CMD                     %MEM %CPU

Top 5 Processes by Memory Usage:

PID    PPID CMD                     %MEM %CPU
```

## Project URL

https://roadmap.sh/projects/server-stats


