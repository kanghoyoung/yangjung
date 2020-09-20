package p0415;

import java.util.Scanner;

public class Exam03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		int num1 = sc.nextInt();
		if (num1 % 7 == 0) {
			System.out.println(num1 + "은 7의 배수입니다.");
		} else {
			System.out.println(num1 + "은 7의 배수가 아닙니다.");
		}

	}

}
