#! /bin/bash

if [[ -e "/private/tmp/AbsoluteMacCoreAgent" ]]
then
    cd "/private/tmp/AbsoluteMacCoreAgent"
    if [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteCoreAgent.pkg"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.sig"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.dat"  ]] && [[ -e "/private/tmp/AbsoluteMacCoreAgent/AbsoluteAgent.checksums"  ]]
    then
        /usr/sbin/installer -pkg ./AbsoluteCoreAgent.pkg -target /

        rm -rf "/private/tmp/AbsoluteMacCoreAgent"
        exit 0
    else
        echo "Mising required files."
        rm -rf "/private/tmp/AbsoluteMacCoreAgent"
        exit 1
    fi
else
    echo "Can't find the installer. Failing."
    exit 1
fi
