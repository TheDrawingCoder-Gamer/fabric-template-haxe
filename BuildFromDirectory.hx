import sys.io.File;
import haxe.io.Path;
import sys.FileSystem;
using StringTools;
class BuildFromDirectory {
    public static function main() {
        // we only want .net
        var dir = FileSystem.readDirectory('javalibs');
        var stinkyFile:Array<String> = ["--class-path src", "net", "-L hxjava", "--java-lib-extern javax/javax-crypto.jar"];
        for (thing in dir) {
            if (Path.extension(thing)  == 'jar') {
                stinkyFile.push("--java-lib-extern javalibs/" + thing);
            }
        }
        stinkyFile = stinkyFile.concat(['--jvm out.jar']);
        File.saveContent('compile.hxml', stinkyFile.join('\n'));
    }
}