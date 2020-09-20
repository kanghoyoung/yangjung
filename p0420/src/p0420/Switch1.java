package p0420;

import java.util.Scanner;

public class Switch1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("정수를 입력하세요 : ");
		int num = sc.nextInt();
		// int num1 = num % 7;
		switch (num % 7) {
		case 0:
			System.out.printf("입력된 정수 %d는 7의배수다.", num);
			break;
		default:
			System.out.printf("입력된 정수 %d는 7의 배수가 아니다.", num);
		}

		sc.close();

	}

}
