package p0429;

import java.util.Scanner;

public class Exam25 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("몇 개의 *를 표시할까요?:");
		int num = sc.nextInt();
		for(int i=0; i<num; i++) {
			System.out.print("*");
		}
		if(num>=1) {
			System.out.println();
		}
	}

}
