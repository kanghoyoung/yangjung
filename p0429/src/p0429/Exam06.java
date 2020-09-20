package p0429;

import java.util.Scanner;

public class Exam06 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정숫값:");
		int num = sc.nextInt();
		System.out.printf("10을 더한 값은 %d입니다.\n", num+10);
		System.out.printf("10을 뺀 값은 %d입니다.", num-10);
	}

}
