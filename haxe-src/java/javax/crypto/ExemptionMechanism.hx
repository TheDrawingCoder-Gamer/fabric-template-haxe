package java.javax.crypto;

import java.security.spec.AlgorithmParameterSpec;
import java.security.AlgorithmParameters;
import java.security.Key;
import java.security.Provider;
import java.lang.Byte;

extern class ExemptionMechanism {
    @:protected
    function finalize():Void;
    public overload function genExemptionBlob():Array<Byte>;
    public overload function genExemptionBlob(output:Array<Byte>):Int;
	public overload function genExemptionBlob(output:Array<Byte>, outputOffset:Int):Int;
	public static overload function getInstance(transformation:String):ExemptionMechanism;
	public static overload function getInstance(transformation:String, provider:String):ExemptionMechanism;
	public static overload function getInstance(transformation:String, provider:Provider):ExemptionMechanism;
    public function getName():String;
    public function getOutputSize(inputLen:Int):Int;
    public function getProvider():Provider;
    public overload function init(key:Key):Void;
	public overload function init(key:Key, params:AlgorithmParameters):Void;
	public overload function init(key:Key, params:AlgorithmParameterSpec):Void;
}