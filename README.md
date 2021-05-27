# LuxCoreRender Mac Files #

This repository contains the source dependencies for the Mac OS version of LuxCoreRender.

The boost compile used pyenv to build the libraries against versions used in blender 2.8.

To use pyenv do the following:
```
brew install pyenv
pyenv init
env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.7.7
pip install numpy==1.17.5
pip install pillow
pip install pyside2
```
