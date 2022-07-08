rmdir "javalibs" /Q /S
call ./gradlew.bat getDeps
npx haxe --run BuildFromDirectory
