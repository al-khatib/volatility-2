# volatility-2
Streamline Volatility setup for Python 2.7 with this script, handling cloning, dependencies, and ease-of-use configuration

# Volatility Installation Script

This repository provides an automated script for installing the Volatility memory forensics framework on systems that require Python 2.7 compatibility.

## Prerequisites

- git
- Python 2.7
- pip2.7
- sudo privileges

## Installation

To use the script:

1. Clone this repository.
2. Make the script executable with `sudo chmod +x install_volatility.sh`.
3. Run the script with `./install_volatility.sh`.

The script performs the following actions:

- Clones the Volatility repository from the official Volatility Foundation GitHub page.
- Creates a wrapper script to invoke Volatility with Python 2.7.
- Sets up a symbolic link to run Volatility with just the `volatility` command.

## Usage

After installation, you can run Volatility from anywhere in your terminal by simply typing `volatility`.

First test: volatility -h

## Contribution

Contributions are welcome! If you'd like to contribute, feel free to fork this repository and submit a pull request.

## License

This script is released under the MIT License. See the LICENSE file for more details.

## Disclaimer

This script is provided "as is", without warranty of any kind, express or implied. Please use at your own risk.
