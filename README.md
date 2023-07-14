# PHP version changer

By using this script, you can easily change the PHP version

## Installation

clone project in a folder or download script bash file 

```bash
git clone https://github.com/mirataollahi/chage_php_version
```
OR
```bash
wget https://github.com/mirataollahi/chage_php_version/archive/refs/heads/main.zip

uzip main.zip
```


## Chagne PHP version
After running the php_change_version.sh file , you will enter the desired PHP version. If the selected PHP version is installed and is different from your current active version, the version will be changed to the selected version.
```
bash ./php_change_version.sh
```


## Show PHP version installed in OS
After running the php_show_versions.sh file , the complete list of PHP versions installed in your operation system will be displayed
```
bash ./php_show_versions.sh
```


## Install PHP by version 
After running the file, enter the desired PHP version and PHP version will be installed along with common plugins . the bash file add ppa:ondrej/php repository if its not exist in your repositories . 
```
bash ./php_show_versions.sh
```
