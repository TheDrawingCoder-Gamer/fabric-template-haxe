package net.fabricmc.example.mixin;

import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import net.fabricmc.example.ExampleMod;

@:meta(org.spongepowered.asm.mixin.Mixin(value = net.minecraft.client.gui.screen.TitleScreen))
class ExampleMixin {
    @:meta(org.spongepowered.asm.mixin.injection.Inject(at = org.asm.spongepowered.asm.mixin.injection.At(value = "HEAD"), method = "init()V"))
    public static function init(info:CallbackInfo) {
        ExampleMod.LOGGER.info("This line is printed by an example mod mixin!");
    }
}
