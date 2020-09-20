package p0421;

import java.util.Scanner;

public class exam01 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		double x = 0.0; // 합계
		
		System.out.printf("두 개의 실수를 입력하세요.\n");
		double d = sc.nextDouble();
		double d2 = sc.nextDouble();
		double sum = d + d2; // 합계
		x = sum/2;
		System.out.printf("두 수의 합은 %.1f 입니다.\n", sum);
		System.out.printf("두 수의 평균은 %.1f 입니다.", x);
		
		
		
		sc.close();

	}

}
