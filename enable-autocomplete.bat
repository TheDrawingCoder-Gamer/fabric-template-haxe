rmdir "javalibs" /Q /S
call ./gradlew.bat getDeps
haxe --run BuildFromDirectory