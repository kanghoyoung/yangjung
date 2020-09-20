package p0409;

import java.util.Scanner;

public class Hello {
	public static void main(String[] args) {
		Scanner sc =  new Scanner(System.in);
		int num1 = 100;
		int num2 = 200;
		System.out.printf("%d+%d=%d%n", num1, num2, num1+num2);
		System.out.printf("%d-%d=%d%n", num1, num2, num1-num2);
		System.out.printf("%d*%d=%d%n", num1, num2, num1*num2);
		num1 = 300;
		System.out.printf("%d/%d=%.1f%n", num1, num2, (float)num1/(float)num2);
		System.out.printf("%d%%%d=%.1f%n", num1, num2, (float)num1%(float)num2);
	}
}