//pyluxconsole

dylibbundler -cd -of -b -x ./lib/pyluxcore.so -d ./lib -p @loader_path

//luxcoreui bundle

dylibbundler -cd -of -b -x ./LuxCore.app/Contents/MacOS/luxcoreui -d ./LuxCore.app/Contents/Resources/libs -p @executable_path/../Resources/libs

//luxcoreconsole

dylibbundler -cd -of -b -x ./luxcoreconsole -d ./libs -p @executable_path/libs




