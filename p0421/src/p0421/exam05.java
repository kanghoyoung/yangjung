package p0421;

import java.util.Scanner;

public class exam05 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("임의의 달을 입력: ");
		int month = sc.nextInt();
		if(month>=1 && month<=6) {
			System.out.printf(month + "월은 상반기 입니다.");
		} else if(month>=7 && month<=12) {
			System.out.printf(month + "월은 하반기입니다.");
		}
		
		sc.close();
	}

}
