package helper.bulbyvr.function;

import java.util.function.Supplier as JSupplier;

class Supplier<T> implements JSupplier<T> {
	public var fun:() -> T;

	public function new(func:() -> T) {
		fun = func;
	}

	public function get():T {
		return fun();
	}
}