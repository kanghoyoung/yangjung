package p0429;

import java.util.Scanner;

public class Exam28 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		do {
			System.out.print("세 자리의 정숫값:");
			num = sc.nextInt();
		}while(num<=100 || num>=999);
		System.out.printf("입력한 값은 %d입니다.", num);
	}

}
