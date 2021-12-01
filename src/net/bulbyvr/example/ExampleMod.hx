package net.bulbyvr.example;
import net.fabricmc.api.ModInitializer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
class ExampleMod implements ModInitializer {
    // Logger is used to print information, warning and errors to console.
    // It's best practice to use your mod id as the loggers name,
    // So it's clear what mod wrote it.
    public static final LOGGER:Logger = LogManager.getLogger("modid");
    public function new() {}
    public function onInitialize():Void {
        LOGGER.info("Hello Fabric!");
    }
}