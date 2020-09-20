package p0429;

import java.util.Scanner;

public class Exam26 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("몇 개의 *을 표시할까요?:");
		int num = sc.nextInt();
		int i=0;
		while(i<num) {
			System.out.print("*");
			i++;
		}
		if(num>=1) {
			System.out.println();
		}
	}

}
