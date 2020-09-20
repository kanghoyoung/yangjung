package p0427;

import java.util.Scanner;

public class Exam01 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("첫번째 수:");
		int first = sc.nextInt();
		System.out.print("두번째 수:");
		int num2 = sc.nextInt();
		System.out.print("세번째 수:");
		int num3 = sc.nextInt();
		
		int sum = first + num2 + num3;
		double avg = sum/3.0;
		System.out.printf("%d + %d + %d = %d\n", first, num2, num3, sum);
		System.out.printf("(%d + %d + %d) 세수의 평균: %.2f", first, num2, num3, avg);
	}

}
