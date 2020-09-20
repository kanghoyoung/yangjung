package p0513;

class Cal {
	int num1, num2;
	float f1, f2, f3;
	
	Cal(int num1, int num2) {
		System.out.println(num1+num2);
		System.out.println(num1-num2);
		System.out.println(num1*num2);
		System.out.println(num1/num2);
	}
	
	Cal(int num1, float f1) {
		System.out.println(num1+f1);
		System.out.println(num1-f1);
		System.out.println(num1*f1);
		System.out.println(num1/f1);
	}
	
	Cal(float f3, int num1) {
		System.out.println(f3+num1);
		System.out.println(f3-num1);
		System.out.println(f3*num1);
		System.out.println(f3/num1);
	}
	
	Cal(float f1, float f2) {
		System.out.println(f1+f2);
		System.out.println(f1-f2);
		System.out.println(f1*f2);
		System.out.println(f1/f2);
	}
}

public class CarTest2 {

	public static void main(String[] args) {
		Cal car1 = new Cal(5, 10);
		System.out.println();
		
		Cal car2 = new Cal(8, 2.0f);
		System.out.println();
		
		Cal car3 = new Cal(2.0f, 8);
		System.out.println();
		
		Cal car4 = new Cal(2.0f, 2.0f);
	}
}