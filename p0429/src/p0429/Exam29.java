package p0429;

import java.util.Scanner;

public class Exam29 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("양의 정숫값:");
		int num = sc.nextInt();
		int i=1, sum=1;
		do {
			sum*=i;
			i++;
		}while(i<=5);
		i=1;
		System.out.printf("%d부터 %d까지의 곱은 %d입니다.", i, num, sum);
	}

}
