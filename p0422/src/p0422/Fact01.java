package p0422;

import java.util.Scanner;

public class Fact01 {
	public static void main(String[] args) {
		long fact = 1;
		int n;
		Scanner s = new Scanner(System.in);
		System.out.print("정수를 입력하세요. : ");
		n = s.nextInt();
		for(int i=1; i<=n; i++) {
			fact *= i;
		}
		System.out.printf("%d!은 %d입니다.", n, fact);
		
		
		s.close();
	}

}
