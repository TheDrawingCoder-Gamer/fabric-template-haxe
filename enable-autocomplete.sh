rm -rf javalibs
mkdir javalibs
./gradlew getDeps
npx haxe --run BuildFromDirectory
