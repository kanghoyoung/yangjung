package p0409;

import java.util.Scanner;

public class ScanTest2 {
	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		System.out.println("정수 3개를 입력하세요 :");
		for(int i=0; i<3; i++) {
			int a = s.nextInt();
			System.out.println(a);
		}
	}
}