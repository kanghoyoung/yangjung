package p0415;

import java.util.Scanner;

public class Exam07 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("첫번째 계산할 값을 입력하세요 ==> ");
		int num1 = sc.nextInt();
		System.out.print("+ - * /  % ==> ");
		String str = sc.next();
		System.out.print("두번째 계산할 값을 입력하세요 ==> ");
		int num2 = sc.nextInt();
		switch (str) {
		case "+":
			System.out.println(num1 + "+" + num2 + "=" + (num1 + num2));
			break;
		case "-":
			System.out.println(num1 + "-" + num2 + "=" + (num1 - num2));
			break;
		case "*":
			System.out.println(num1 + "*" + num2 + "=" + (num1 * num2));
			break;
		case "/":
			if (num1 == 0 || num2 == 0) {
				System.out.println("0으로 나누면 안됩니다.");
				break;
			}
			// }else{
			System.out.println(num1 + "/" + num2 + "=" + (num1 / num2));

			break;
		case "%":
			if (num1 == 0 || num2 == 0) {
				System.out.println("0으로 나누면 안됩니다.");
				break;
			}
			// }else{
			System.out.println(num1 + "%" + num2 + "=" + (num1 % num2));

			break;
		}
	}

}
