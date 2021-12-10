package net.fabricmc.example.mixin;

import fabric.glue.GlueAccessor;

@:mixin(net.minecraft.world.World)
class ExampleStaticAccessor implements  GlueAccessor {
    @:accessor("DIRECTIONS")
    public static var DIRECTIONS(get, set):java.NativeArray<net.minecraft.util.math.Direction>;
}