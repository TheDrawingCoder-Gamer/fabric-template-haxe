rmdir "javalibs" /Q /S
gradle getDeps
haxe --run BuildFromDirectory
haxe compile.hxml
rmdir "src/main/java" /Q /S
xcopy /E /I "bin/src" "src/main/java" 
gradle build