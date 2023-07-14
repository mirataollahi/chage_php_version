# bash : change php version bot . /home/scripts/change_php_version.sh


SUCCESS_COLOR="\e[32m"
ERROR_COLOR="\e[31m"
WARNING_COLOR="\e[33m"
BOLD_COLOR="\e[1;7m"
RESET_COLOR="\e[0m"


# Get the current version of PHP CLI
CURRENT_PHP_VERSION="$(php -r 'echo PHP_MAJOR_VERSION . "." . PHP_MINOR_VERSION;')"



# Prompt the user for the desired PHP version
read -p $'\e[36mEnter PHP version ( current is '"${CURRENT_PHP_VERSION}"$'\e[36m ): \e[0m' php_version


# Check if the specified version of PHP CLI is installed
if ! dpkg -s php$php_version-cli >/dev/null 2>&1; then
    echo -e "${ERROR_COLOR}Error: PHP $php_version is not installed\e[0m"
    exit 1
fi




# Check if the entered PHP version is the same as the current version
if [ "$CURRENT_PHP_VERSION" = "$php_version" ]; then
    echo -e "${WARNING_COLOR}Warning: The current PHP version is already $php_version${RESET_COLOR}"
    exit 1
fi



# Update the system's alternatives to use the specified version of PHP CLI
sudo update-alternatives --set php /usr/bin/php$php_version




# Display a success message in green color
echo -e "${SUCCESS_COLOR}Successfully changed PHP version to $php_version${RESET_COLOR}\n"

# Display the current version of PHP CLI
php -v
