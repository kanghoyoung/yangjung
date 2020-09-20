package p0413;

import java.util.Scanner;

public class Exam09 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		double num1 = sc.nextDouble();
		double num2 = sc.nextDouble();
		
		System.out.println("첫 번째 수를 입력 하세요 : " + num1);
		System.out.println("두 번째 수를 입력 하세요 : " + num2);
		System.out.printf("%.2f + %.2f = %.2f%n", num1, num2, num1 + num2);
		System.out.printf("%.2f - %.2f = %.2f%n", num1, num2, num1 - num2);
		System.out.printf("%.2f * %.2f = %.2f%n", num1, num2, num1 * num2);
		System.out.printf("%.2f / %.2f = %.2f%n", num1, num2, num1 / num2);
		System.out.printf("%.2f %% %.2f = %.2f", num1, num2, num1 % num2);
	}
}