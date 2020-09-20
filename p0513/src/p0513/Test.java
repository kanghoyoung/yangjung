package p0513;

class A {
	A() {
		System.out.println("A 생성자");
	}
}

class B extends A {
	B() {
		System.out.println("B 생성자");
	}
}

class C extends B {
	C() {
		System.out.println("C 생성자");
	}
}

public class Test {
	public static void main(String[] args) {
		C c1 = new C();
	}
}
