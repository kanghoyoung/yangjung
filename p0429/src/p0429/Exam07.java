package p0429;

import java.util.Scanner;

public class Exam07 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("x값:");
		float f1 = sc.nextFloat();
		System.out.print("y값:");
		float f2 = sc.nextFloat();
		System.out.printf("합계는 %.2f입니다.\n", f1+f2);
		System.out.printf("평균은 %.3f입니다.", (f1+f2)/2);
	}

}
