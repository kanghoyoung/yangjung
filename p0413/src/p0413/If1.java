package p0413;

import java.util.Scanner;

public class If1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		System.out.print("정수를 입력하세요 : ");
		num = sc.nextInt();
		if(num%2==0) {
			System.out.println("2의 배수");
		} else if(num%3==0) {
			System.out.println("3의 배수");
		} else {
			System.out.println("2의 배수나 3의 배수가 아닙니다.");
		}
	}
}