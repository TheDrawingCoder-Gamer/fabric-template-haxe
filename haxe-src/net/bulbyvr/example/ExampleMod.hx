package net.bulbyvr.example;
import net.fabricmc.api.ModInitializer;

class ExampleMod implements ModInitializer {
    public function new() {}
    public function onInitialize():Void {
        Sys.println("Hello Fabric!");
    }
}