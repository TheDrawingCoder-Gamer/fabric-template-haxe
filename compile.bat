rmdir "javalibs" /Q /S
del compile.hxml
call ./gradlew.bat getDeps

haxe --run BuildFromDirectory
haxe compile.hxml
call ./extractjar.bat
xcopy /E /I "resources" "outjar"
del out.jar
cd outjar
jar cf ../out.jar ./**
cd ..
call ./gradlew build