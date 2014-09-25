# Script to install KDE and x2go on Debian Weezy

# Add x2go repo
printf 'deb http://packages.x2go.org/debian wheezy main\ndeb-src http://packages.x2go.org/debian wheezy main\n' > /etc/apt/sources.list.d/x2go.list

# Get updates
apt-get update

# Install kde-desktop
# The installation prompts the user to enter the keyboard configuration
# and the language setting. The DEBIAN_FRONTEND=noninteractive
# turns it off and instructus the installer to use the default setting.
DEBIAN_FRONTEND=noninteractive apt-get -y install kde-plasma-desktop

#Install x2go key ring
apt-get install x2go-keyring

#Install x2goserver
apt-get install x2goserver*

# Make sure x2goserver is running (should be already)
service x2goserver start