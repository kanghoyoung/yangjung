package p0506;

public class Calc {
	int num1, num2;
	float num3, num4;
	int sum;
	
	Calc() {
		for(int i=1; i<=100; i++) {
			sum=sum+i;
		}
		System.out.printf("sum : %d\n", sum);
	}
	
	Calc(int num1, int num2) {
		this.num1=num1;
		this.num2=num2;
		System.out.printf("%d + %d = %d\n", num1, num2, num1+num2);
	}
	
	Calc(float num1, int num2) {
		num3=num1;
		this.num2=num2;
		System.out.printf("%.1f + %d = %.1f\n", num3, num2, num3+num2);
	}
	
	Calc(int num1, float num2) {
		this.num1=num1;
		num4=num2;
		System.out.printf("%df + %.1f = %.1f\n", this.num1, num4, this.num1+num4);
	}
	
	public Calc(float num3, float num4) {
		this.num3=num3;
		this.num4=num4;
		System.out.printf("%.1f + %.1f = %.1f\n", this.num3, this.num4, this.num3 + this.num4);
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

