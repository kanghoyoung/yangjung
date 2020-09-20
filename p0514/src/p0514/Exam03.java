package p0514;

import java.util.Scanner;

public class Exam03 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("왼쪽아래가 직각인 이등변 삼각형을 표시합니다.\n");
		System.out.printf("단수는?:");
		int num=sc.nextInt();
		for(int i=0; i<num; i++) {
			for(int j=num; j>i; j--) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		sc.close();
	}

}
