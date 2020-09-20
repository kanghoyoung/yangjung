package p0429;

import java.util.Scanner;

public class Exam15 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("변수 a:");
		int num = sc.nextInt();
		System.out.print("변수 b:");
		int num2 = sc.nextInt();
		if(num>num2) {
			System.out.print("a가 크다.");
		}else if(num<num2) {
			System.out.print("b가 크다.");
		}else if(num==num2) {
			System.out.print("a와 b가 같다.");
		}
	}

}
