call ./enable-autocomplete.bat
rmdir /Q /S ./glue
haxe compile.hxml

call ./gradlew build