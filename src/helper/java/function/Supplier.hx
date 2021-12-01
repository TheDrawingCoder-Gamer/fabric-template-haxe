package helper.bulbyvr.function;

import java.util.function.Supplier as JSupplier;
@:dce
class SupplierRaw<T> implements JSupplier<T> {
	public var fun:() -> T;

	public function new(func:() -> T) {
		fun = func;
	}

	public function get():T {
		return fun();
	}
}
@:dce
@:forward
abstract Supplier<T>(SupplierRaw<T>) {
	public function new (func:() -> T) {
		this = new SupplierRaw<T>(func);
	}
	@:from
	public static function fromFunc<T>(func:() -> T) {
		return new Supplier<T>(func);
	}
}