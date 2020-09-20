package p0429;

import java.util.Scanner;

public class Exam13 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("변수 A:");
		int num = sc.nextInt();
		System.out.print("변수 B:");
		int num2 = sc.nextInt();
			if(num%num2==0) {
				System.out.print("B는 A의 약수입니다.");
			}else{
				System.out.print("B는 A의 약수가 아닙니다.");
			}
	}

}
