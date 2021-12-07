package net.fabricmc.example.mixin;

import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import net.fabricmc.example.ExampleMod;
@:build(fabric.glue.Glue.mixin(net.minecraft.client.gui.screen.TitleScreen))
class ExampleMixin {
    @inject("HEAD", "init()V")
    public static function init(info:CallbackInfo) {
        ExampleMod.LOGGER.info("This line is printed by an example mod mixin!");
    }
}