#! /bin/bash

# Check if the AbsoluteMacCoreAgent folder exists.
if [[ -e "/private/tmp/AbsoluteMacCoreAgent" ]]
then
    # If it does, then cd into the folder.
    cd "/private/tmp/AbsoluteMacCoreAgent"
    # Verify the folder contains the right stuff. You could enhance this with signature checking, but
    # given that this is an embedded package you should be doing this before you embed.
    if [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteCoreAgent.pkg"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.sig"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.dat"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.checksums"  ]]
    then
        # Run the installation
        /usr/sbin/installer -pkg ./AbsoluteCoreAgent.pkg -target /
        # Remove the folder when finished and exit.
        rm -rf "/private/tmp/AbsoluteMacCoreAgent"
        exit 0
    else
        # If the folder doesn't have everything error out and clean up.
        echo "Mising required files."
        rm -rf "/private/tmp/AbsoluteMacCoreAgent"
        exit 1
    fi
else
    # If the folder doesn't exist, then error out.
    echo "Can't find the installer. Failing."
    exit 1
fi
