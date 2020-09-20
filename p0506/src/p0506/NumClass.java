package p0506;

class Cal {
	int num1, num2;
	float num3, num4;
	Cal() {
		System.out.println("기본 생성자");
	}
	Cal(int num1, int num2) {
		this.num1=num1;
		this.num2=num2;
		System.out.printf("%d + %d = %d\n", num1, num2, num1+num2);
	}
	Cal(float num1, int num2) {
		num3=num1;
		this.num2=num2;
		System.out.printf("%.1f + %d = %.1f\n", num3, num2, num3+num2);
	}
	
	Cal(int num1, float num2) {
		this.num1=num1;
		num4=num2;
		System.out.printf("%df + %.1f = %.1f\n", this.num1, num4, this.num1+num4);
	}
	
	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	void print() {
		System.out.printf("%d + %d = %d\n", num1, num2, num1+num2);
	}
}

public class NumClass {
	public static void main(String[] args) {
		
		Cal c1 = new Cal();
		c1.setNum1(10);
		c1.setNum2(15);
		c1.print();
		
		Cal c2 = new Cal(100, 200);
		Cal c3 = new Cal(100.5f, 200);
		Cal c4 = new Cal(200, 150.7f);
	}
}