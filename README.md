# Fabric Example Mod

## Haxe specifics
### Limitations
~~Haxe currently doesn't export generic types properly, meaning anything that has a type restraint (like crafting recipes) fails. ~~
This has been fixed! Haxe can export directly to JVM which sidesteps this issue, and gradle can read a jar file directly!
## Setup

For setup instructions please see the [fabric wiki page](https://fabricmc.net/wiki/tutorial:setup) that relates to the IDE that you are using.


## License

This template is available under the CC0 license. Feel free to learn from it and incorporate it in your own projects.

To set this up you need to provide a 1.16.5 jar file. This (sadly) requires you to have built a loom project before (i reccomend building the base project).
Then in your user folder (one of the things in C:/Users on windows) you'll want to go to .gradle/caches/fabric-loom and find a folder that has "1.16.5" somewhere in the name. Take the jar that has nothing on the end out of it (so the normal jar, not sources or dev) and put that in "javathings" and rename it to 1.16.5.jar

if you want to upgrade this you can replace all the gradle files, `src/main/resources/fabric.mod.json` and the java things. you can get the java thing files from [fabricmc's maven thing](https://maven.fabricmc.net/) ([fabric loader](https://maven.fabricmc.net/net/fabricmc/fabric-loader/), [yarn](https://maven.fabricmc.net/net/fabricmc/yarn/), [fabric-api](https://maven.fabricmc.net/net/fabricmc/fabric-api/fabric-api/)) and haxe should manage
