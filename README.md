# LuxCoreRender Mac Files #

This repository contains the source dependencies for the Mac OS version of LuxCoreRender.

The boost compile used pyenv to build the libraries against versions used in blender 3.0+.

To use pyenv do the following:
```
brew install pyenv
pyenv init
env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.9.7
pip install numpy==1.21.2
pip install pillow
pip install pyside2
...

install build tools
...
brew install cmake
brew install autoconf
brew install automake
brew install ispc
...


compile dependencies 
...

./cut_deps_release_310_intel_static.sh

...
