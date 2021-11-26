rm -rf javalibs
mkdir javalibs
./gradlew getDeps
haxe --run BuildFromDirectory
haxe compile.hxml
./extractjar.sh
# Copy contents of resources to jar
cp -r resources/. outjar
rm out.jar
cd outjar
jar cf ../out.jar ./**/** .
# lol 
# No copying because we don't compile to java anymore
# rm -rf src/main/java
# cp -rf bin/src src/main/java
cd ..
./gradlew build