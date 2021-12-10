package net.fabricmc.example.mixin;

import fabric.glue.GlueMixin;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import net.fabricmc.example.ExampleMod;

@:mixin(value = net.minecraft.client.gui.screen.TitleScreen, priority = 69)
class ExampleMixin implements GlueMixin {
    @:inject(at = "HEAD", method = "init()V")
    public static function init(info:CallbackInfo) {
        ExampleMod.LOGGER.info("This line is printed by an example mod mixin!");
    }
}