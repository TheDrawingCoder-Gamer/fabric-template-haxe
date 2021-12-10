package net.fabricmc.example.mixin;

import fabric.glue.GlueAccessor;

// Macro supports `using`. Wow!
// This auto gets converted to 
// getItemUseCooldown(instance):Int
// setItemUseCooldown(instance, i:Int):Void 
// which is what using is  :) 
@:mixin(net.minecraft.client.MinecraftClient)
class ExampleAccessor implements GlueAccessor {
    @:accessor("itemUseCooldown")
    public function getItemUseCooldown():Int;
    @:accessor("itemUseCooldown")
    public function setItemUseCooldown(i:Int):Void;
}