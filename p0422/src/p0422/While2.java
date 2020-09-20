package p0422;

import java.util.Scanner;

public class While2 {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		while (true) {
			int sec = 0;
			System.out.print("첫번째 수 : ");
			int first = sc.nextInt();
			if (first == 999 || sec == 999) {
				System.out.println("프로그램종료");
				break;
			}
			System.out.print("연산자 입력 ( + - * / ) : ");
			String op = sc.next();
			System.out.print("두번째 수 : ");
			sec = sc.nextInt();

			
			
			switch (op) {
			case "+":
				System.out.printf("%d %s %d = %d\n", first, op, sec, first + sec);
				break;

			case "-":
				System.out.printf("%d %s %d = %d\n", first, op, sec, first - sec);
				break;

			case "*":
				System.out.printf("%d %s %d = %d\n", first, op, sec, first * sec);
				break;

			case "/":
				System.out.printf("%d %s %d = %d\n", first, op, sec, first / sec);
				break;

			default:
				System.out.print("잘못된 연산자");
			}

		}
		
		

	}
	

}
