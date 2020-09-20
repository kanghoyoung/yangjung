package p0413;

import java.util.Scanner;

public class Exam03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		System.out.println("사각형의 가로를 입력하시오: " + num1);
		System.out.println("사각형의 가로를 입력하시오: " + num2);
		System.out.println("사각형의 넓이는 " + num1 * (double)num2);
		System.out.println("사각형의 둘레는 " + (num1 + (double)num2) * 2);
	}
}