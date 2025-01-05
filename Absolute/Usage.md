## How To
1. Create a package that puts the Absolute Home Office core agent folder called: AbsoluteMacCoreAgent in /private/tmp (Make sure you unzip the download from Absolute.)
2. Take the script included in this folder and use it as your post install script.
3. Verify that the cotnents of the folder and the name of the package is still the same as it was when the script was last updated.

I suggest using something like Whitebox Packages for making your package. If you do then create a raw package.

## Signing Etc
I am not covering how to [properly sign or notarize this package](https://www.davidebarranca.com/2019/04/notarizing-installers-for-macos-catalina/). If that is something you want to do, then there are plenty of guides for how to do this if you care. Packages makes it easy to sign the Packages.
