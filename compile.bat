rmdir "javalibs" /Q /S
./gradlew.bat getDeps
haxe --run BuildFromDirectory
haxe compile.hxml
:: rmdir "src/main/java" /Q /S
:: xcopy /E /I "bin/src" "src/main/java" 
./gradlew.bat build