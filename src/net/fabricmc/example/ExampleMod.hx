package net.fabricmc.example;
import net.fabricmc.api.ModInitializer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/*
If your class is referenced in mixins, add this to make it nicer to work with.
If you do not you may have to use a bytecode viewer to 
see where your classes true location is
(usually it could be like `net.fabricmc.example._ExampleMod.ExampleMod_Fields_`)
*/
@:nativeGen
class ExampleMod {
	public static final LOGGER:Logger = LogManager.getLogger("modid");

	public static function onInitialize() {
		LOGGER.info("Hello Fabric!");
	}
}
