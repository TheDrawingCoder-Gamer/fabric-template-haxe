package java.javax.crypto;

import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.AlgorithmParameters;
import java.security.Key;
import java.nio.ByteBuffer;
import java.lang.Byte;

extern abstract class CipherSpi {
    public function new();
    @:protected
    abstract overload function engineDoFinal(input : Array<Byte>, inputOffset : Int, inputLen : Int):Array<Byte>;
    @:protected
	abstract overload function engineDoFinal(input:Array<Byte>, inputOffset:Int, inputLen:Int, output:Array<Byte>, outputOffset:Int):Int;
    @:protected
	overload function engineDoFinal(input:ByteBuffer, output:ByteBuffer):Int;
    @:protected
    abstract function engineGetBlockSize():Int;
    @:protected
    abstract function engineGetIV():Array<Byte>;
    @:protected
    function engineGetKeySize(key:Key):Int;
    @:protected
    abstract function engineGetOutputSize(inputLen:Int):Int;
    @:protected
    abstract function engineGetParameters():AlgorithmParameters;
    @:protected
    abstract overload function engineInit(opmode:Int, key:Key, params:AlgorithmParameterSpec, random:SecureRandom):Void;
    @:protected
    abstract overload function engineInit(opmode:Int, key:Key, params:AlgorithmParameters, random:SecureRandom):Void;
    @:protected
    abstract overload function engineInit(opmode:Int, key:Key, random:SecureRandom):Void;
    @:protected
    abstract function engineSetMode(mode:String):Void;
    @:protected
    abstract function engineSetPadding(padding:String):Void;
    @:protected
	function engineUnwrap(wrappedKey:Array<Byte>, wrappedKeyAlgorithm:String, wrappedKeyType:Int):Key;
    @:protected
    abstract overload function engineUpdate(input:Array<Byte>, inputOffset:Int, inputLen:Int):Array<Byte>;
	@:protected
	abstract overload function engineUpdate(input:Array<Byte>, inputOffset:Int, inputLen:Int, output:Array<Byte>, outputOffset:Int):Int;
    @:protected
    overload function engineUpdate(input:ByteBuffer, output:ByteBuffer):Int;
    @:protected
    overload function engineUpdateAAD(src:Array<Byte>, offset:Int, len:Int):Void;
	@:protected
	overload function engineUpdateAAD(src:ByteBuffer):Void;
    @:protected
    function engineWrap(key:Key):Array<Byte>;
}