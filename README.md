# Fabric Example Mod

## Setup

For setup instructions please see the [fabric wiki page](https://fabricmc.net/wiki/tutorial:setup) that relates to the IDE that you are using.


## License

This template is available under the CC0 license. Feel free to learn from it and incorporate it in your own projects.

## Details
On unix, you may have to `sudo chmod +x`, `enable-autocomplete.sh`, `gradlew` and `compile.sh`.

No extra setup is required. If you want to have a module name that doesn't start with a `net` you must edit `BuildFromDirectory.hx`  and change  the `TOP_LEVEL` static var to whatever your starter module name is (like io, org, etc). The reason you have to do this is because of how haxe handles building libraries; you must specify the type path you want to include and "net" is the default typepath.

if you want to upgrade this you can replace all the gradle files, `resources/fabric.mod.json` and the java things. you can get the java thing files from [fabricmc's maven thing](https://maven.fabricmc.net/) ([fabric loader](https://maven.fabricmc.net/net/fabricmc/fabric-loader/), [yarn](https://maven.fabricmc.net/net/fabricmc/yarn/), [fabric-api](https://maven.fabricmc.net/net/fabricmc/fabric-api/fabric-api/)) and haxe should manage

If you don't need mixins you can delete the java folder and the mixin info from the jsons.

I recommend using at least Haxe 4.3.0 (as of 11/30/21 it isn't out yet, so I recommend using cutting edge currently.) This allows you to use jvm defaults. Otherwise, you'll have to write implementations for things you really shouldn't be writing implementations for when implementing interfaces.

Javax Crypto is included as minecraft requires it but haxe doesn't know it exists, thus it requires an extern. Currently this requires having a jar in the repository but if there is another way I'd love to hear it. 