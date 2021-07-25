rm -rf javalibs
gradle getDeps
haxe --run BuildFromDirectory
haxe compile.hxml
# lol 
rm -rf src/main/java
cp -rf bin/src src/main/java
gradle build