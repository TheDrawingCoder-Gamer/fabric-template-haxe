rm -rf javalibs
mkdir javalibs
./gradlew getDeps
haxe --run BuildFromDirectory