#!/bin/bash

echo "-----------------"
echo "-----OpenPKG-----"
echo "-----------------"
echo
echo "The packages are downloaded from GitHub!!!"

read -p "Package name: " name
read -p "Package owner (creator): " owner

git clone https://github.com/$owner/$name.git

read -p "Create install.sh? [y/n]: " install

if [ "$install" == "y" ]; then
    cd $name
    touch install.sh
    echo "#!/bin/bash" >> install.sh
    echo "# Add your installation commands here" >> install.sh
    chmod +x install.sh
    vi install.sh
    ./install.sh
    cd ..
    echo "Installation successful!!!"
fi

if [ "$install" == "n" ]; then
    echo "Installation canceled!!!"
fi
