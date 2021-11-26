rmdir "javalibs" /Q /S
./gradlew.bat getDeps
haxe --run BuildFromDirectory
haxe compile.hxml
./extractjar.bat
:: rmdir "src/main/java" /Q /S
:: xcopy /E /I "bin/src" "src/main/java" 
xcopy /E /I "resources/." "outjar"
del out.jar
cd outjar
jar cf ../out.jar **/** .
cd ..
./gradlew.bat build