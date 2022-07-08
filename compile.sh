./enable-autocomplete.sh
rm -rf ./glue
npx haxe compile.hxml

./gradlew build
