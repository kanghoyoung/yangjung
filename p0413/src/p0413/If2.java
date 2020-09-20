package p0413;

import java.util.Scanner;

public class If2 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.printf("성적을 입력하시오: ");
		int num = sc.nextInt();

		if (num > 0 || num < 0) {
			System.out.println("점수를 다시 입력하세요. (0~100)");
		} else if (num >= 90) {

			System.out.println("A");

		} else if (num >= 80) {

			System.out.println("B");


		} else if (num >= 70) {

			System.out.print("C");

		} else if (num >= 60) {
			
			System.out.print("D");
		} else {
			System.out.println("F");
		}
		sc.close();
	}
}