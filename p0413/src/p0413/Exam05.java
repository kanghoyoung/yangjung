package p0413;

import java.util.Scanner;

public class Exam05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt(); // 반지름
		double PI = 3.14;
		double sum = num1 * num1 * PI;
		System.out.println("반지름을 입력하세요 : " + num1);
		System.out.printf("원의 면적 = %.4f", sum);
//		System.out.format("원의 면적 = %.4f", sum);

	}

}
