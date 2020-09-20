package p0414;

import java.util.Scanner;

public class If {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num1, num2;
		System.out.print("첫번째 정수: ");
		num1 = sc.nextInt();
		System.out.print("두번째 정수: ");
		num2 = sc.nextInt();
		
		if(num1 > num2) {
			System.out.printf("큰 수는 %d\n" + num1);
		} else if(num1 < num2) {
			System.out.printf("큰 수는 %d\n" + num2);
		} else if(num1 == num2) {
			System.out.printf("두 수가 같다.");
		}
		sc.close();
	}
}