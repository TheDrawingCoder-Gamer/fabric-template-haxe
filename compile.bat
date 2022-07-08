call ./enable-autocomplete.bat
rmdir /Q /S ./glue
npx haxe compile.hxml

call ./gradlew build
