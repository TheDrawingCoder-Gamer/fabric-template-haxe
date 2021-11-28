call ./enable-autocomplete.bat
haxe compile.hxml
call ./extractjar.bat
xcopy /E /I "resources" "outjar"
del out.jar
cd outjar
jar cf ../out.jar ./**
cd ..
call ./gradlew build