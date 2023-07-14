# Search for installed PHP versions
versions=$(dpkg -l | grep '^ii' | grep 'php[0-9].[0-9]\+-cli' | awk '{print $2}' | sed 's/php//g' | sort -r)

# Check if any PHP versions are found
if [ -z "$versions" ]; then
    echo "No PHP versions found."
else
    # Display the list of PHP versions
    echo "Installed PHP versions:"
    echo "$versions"
fi




