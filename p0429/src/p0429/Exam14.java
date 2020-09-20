package p0429;

import java.util.Scanner;

public class Exam14 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정숫값:");
		int num = sc.nextInt();
		if(num>0) {
			System.out.print("값이 양수입니다.");
		}else if(num<0) {
			System.out.print("값이 음수입니다");
		}else if(num==0) {
			System.out.print("값이 0입니다.");
		}
	}

}
