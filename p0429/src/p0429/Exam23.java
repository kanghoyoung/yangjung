package p0429;

import java.util.Scanner;

public class Exam23 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 a:");
		int num = sc.nextInt();
		System.out.print("정수 b:");
		int num2 = sc.nextInt();
		if(num>num2) {
			System.out.printf("작은 값은 %d입니다.\n", num2);
			System.out.printf("큰 값은 %d입니다.", num);
		}else if(num<num2) {
			System.out.printf("작은 값은 %d입니다.\n", num);
			System.out.printf("큰 값은 %d입니다.", num2);
		}else if(num==num2) {
			System.out.print("두 값이 같습니다.");
		}
	}

}
