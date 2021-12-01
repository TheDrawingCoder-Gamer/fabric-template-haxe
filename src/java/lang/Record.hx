package java.lang;

// required class to solve some lib importng issues
// please don't use it :sob:
@:dce
extern abstract class Record {
    @:protected
    function new();
    public abstract function equals(obj:Dynamic):Bool;
    public abstract function hashCode():Int;
    public abstract function toString():String;
}