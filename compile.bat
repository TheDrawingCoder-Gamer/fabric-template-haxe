haxe build.hxml
rmdir "src/main/java" /Q /S
xcopy /E /I "bin/src" "src/main/java" 
gradle build