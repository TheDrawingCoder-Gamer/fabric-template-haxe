# Fabric Example Mod

## Haxe specifics
### Limitations

Haxe used to not be able to handle type constraints, but this has been sidestepped by directly compiling to JVM, and using the jar as the input. This should be fully working! Please report any bugs. 
## Setup

For setup instructions please see the [fabric wiki page](https://fabricmc.net/wiki/tutorial:setup) that relates to the IDE that you are using.


## License

This template is available under the CC0 license. Feel free to learn from it and incorporate it in your own projects.

On unix, you may have to +chmod `extractjar.sh`, `gradlew` and `compile.sh`.

No extra setup is required. If you want to have a module name that doesn't start with a `net` you must edit `BuildFromDirectory.hx`  and change `net` on line 9 to whatever your starter module name is (like io, org, etc). The reason you have to do this is because of how haxe handles building libraries; you must specify the type path you want to include and "net" is the default typepath.

if you want to upgrade this you can replace all the gradle files, `src/main/resources/fabric.mod.json` and the java things. you can get the java thing files from [fabricmc's maven thing](https://maven.fabricmc.net/) ([fabric loader](https://maven.fabricmc.net/net/fabricmc/fabric-loader/), [yarn](https://maven.fabricmc.net/net/fabricmc/yarn/), [fabric-api](https://maven.fabricmc.net/net/fabricmc/fabric-api/fabric-api/)) and haxe should manage
