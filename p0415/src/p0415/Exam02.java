package p0415;

import java.util.Scanner;

public class Exam02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("평점을 입력하세요: ");
		double num1 = sc.nextDouble();
		System.out.printf("평점: %.1f\n", num1);
		if (num1 >= 4.0) {
			System.out.println("장학금 대상자입니다");
		} else {
			System.out.println("장학금 대상자가 아닙니다");
		}

	}

}
