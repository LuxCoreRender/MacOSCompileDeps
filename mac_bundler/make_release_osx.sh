#!/bin/bash
#script to copile OSX bundle run it in the build dir

mkdir release_OSX
cp -R ./mac_bundle/LuxCore.app ./release_OSX

###luxcoreui bundle
cp luxcoreui ./release_OSX/LuxCore.app/Contents/MacOS
cd release_OSX
dylibbundler -cd -of -b -x ./LuxCore.app/Contents/MacOS/luxcoreui -d ./LuxCore.app/Contents/Resources/libs -p @executable_path/../Resources/libs

###luxcoreconsole
mkdir ./luxcoreconsole
cp ../luxcoreconsole ./luxcoreconsole
cd luxcoreconsole
dylibbundler -cd -of -b -x luxcoreconsole -d ./libs -p @executable_path/libs
cd ..
###pyluxconsole
mkdir pyluxcore
cp ../lib/pyluxcore* ./pyluxcore
cd pyluxcore
dylibbundler -cd -of -b -x pyluxcore.so -d ./lib -p @loader_path
cd ../../




