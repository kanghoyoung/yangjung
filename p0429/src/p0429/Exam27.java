package p0429;

import java.util.Scanner;

public class Exam27 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i=0;
		System.out.print("몇 개의 *을 표시할까요?:");
		int num = sc.nextInt();
		do {
			System.out.print("*");
			i++;
		}while(i<num);
		if(num>=1) {
			System.out.println();
		}
	}

}
