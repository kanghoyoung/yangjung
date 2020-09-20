package p0409;

import java.util.Scanner;

public class ScanTest {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.printf("첫 번째 수 : ");
		int num1, num2;
		num1 = scan.nextInt();
		System.out.printf("두 번째 수 : ");
		num2 = scan.nextInt();
		System.out.printf("%d + %d = %d\n", num1, num2, num1 + num2);
		System.out.printf("%d - %d = %d\n", num1, num2, num1 - num2);
		System.out.printf("%d * %d = %d\n", num1, num2, num1 * num2);
		System.out.printf("%d / %d = %f\n", num1, num2, (float)num1 / (float)num2);
		System.out.printf("%d % %d = %f\n", num1, num2, (float)num1 % (float)num2);
		
		scan.close();
	}
}