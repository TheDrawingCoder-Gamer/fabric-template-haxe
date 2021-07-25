import sys.io.File;
import haxe.io.Path;
import sys.FileSystem;
using StringTools;
class BuildFromDirectory {
    public static function main() {
        // we only want .net
        var dir = FileSystem.readDirectory('javalibs');
        var stinkyFile:Array<String> = ["--class-path haxe-src", "-dce no", "net", "-L hxjava", "--java-lib-extern javax/javax-crypto.jar"];
        for (thing in dir) {
            trace(thing);
            if (Path.extension(thing)  == 'jar') {
                stinkyFile.push("--java-lib-extern javalibs/" + thing);
            }
        }
        stinkyFile = stinkyFile.concat(['-java bin']);
        File.saveContent('compile.hxml', stinkyFile.join('\n'));
    }
}