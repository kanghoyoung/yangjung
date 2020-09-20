package p0429;

import java.util.Scanner;

public class Exam30 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.printf("카운트다운 합니다.\n");
		System.out.print("양의 정숫값:");
		int num = sc.nextInt();
		for(int i=num; i>=0; i--) {
			System.out.printf("%d\n", i);
		}
	}

}
