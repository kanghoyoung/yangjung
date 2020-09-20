package p0429;

import java.util.Scanner;

public class Exam31 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("1부터 n까지의 합을 구합니다.n의 값:");
		int num = sc.nextInt();
		int sum = 0;
		for(int i=1; i<=num; i++) {
			sum+=i;
		}
		System.out.printf("1부터 %d까지의 합은 %d입니다.", num, sum);
	}

}
