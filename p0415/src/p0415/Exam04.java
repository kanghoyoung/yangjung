package p0415;

import java.util.Scanner;

public class Exam04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력 하세요 : ");
		int num1 = sc.nextInt();
		if (num1 > 100) {
			System.out.println("100보다 크군요...");
		} else if (num1 < 100) {
			System.out.println("100보다 작군요...");
		} else if (num1 == 100) {
			System.out.println("100과 같군요...");
		}

	}

}
