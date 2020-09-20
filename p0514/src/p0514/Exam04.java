package p0514;

import java.util.Scanner;

public class Exam04 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("정숫값:");
		int num = sc.nextInt();
		
		for(int i=1; i<=num; i++) {
			System.out.printf("%d의 제곱은 %d입니다.\n", i, (int)Math.pow(i, 2));
		}
		
		
		sc.close();
	}

}
