package p0421;

import java.util.Scanner;

public class exam03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("나이를 입력하세요 : \n");
		int age = sc.nextInt(); // 나이를 입력 받는 변수
		if(age >= 19) {
			System.out.printf("성년");
		} else {
			System.out.printf("미성년");
		}
		sc.close();
	}

}
