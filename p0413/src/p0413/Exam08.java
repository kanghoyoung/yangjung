package p0413;

import java.util.Scanner;

public class Exam08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		System.out.println("첫 번째 수를 입력 하세요 : " + num1);
		System.out.println("두 번째 수를 입력 하세요 : " + num2);
		System.out.println(num1 + " + " + num2 + " = " + (num1 + num2));
		System.out.println(num1 + " - " + num2 + " = " + (num1 - num2));
		System.out.println(num1 + " * " + num2 + " = " + num1 * num2);
		System.out.println(num1 + " / " + num2 + " = " + num1 / num2);
		System.out.println(num1 + " % " + num2 + " = " + num1 % num2);

	}

}
