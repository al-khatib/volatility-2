#!/bin/bash

# Update and install dependencies
sudo apt-get update
sudo apt-get install -y git python2.7 python2.7-dev build-essential

# Clone the Volatility repository
git clone https://github.com/volatilityfoundation/volatility.git
cd volatility

# Install the Python dependencies for Volatility
#sudo pip2.7 install -r requirements.txt

# Create a wrapper script to run Volatility with Python 2.7
echo '#!/bin/bash' | sudo tee /usr/local/bin/volatility-wrapper
echo 'python2.7 /path/to/volatility/vol.py "$@"' | sudo tee -a /usr/local/bin/volatility-wrapper

# Replace /path/to/volatility with the actual path to your Volatility directory
sudo sed -i 's|/path/to/volatility|'"$(pwd)"'|' /usr/local/bin/volatility-wrapper

# Make the wrapper script executable
sudo chmod +x /usr/local/bin/volatility-wrapper

# Create a symbolic link to the wrapper script
sudo ln -sf /usr/local/bin/volatility-wrapper /usr/local/bin/volatility

# Test the setup
volatility --help
