package p0429;

import java.util.Scanner;

public class Exam21 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 a:");
		int num = sc.nextInt();
		System.out.print("정수 b:");
		int num2 = sc.nextInt();
		int sum = num - num2;
		if(sum<0) {
			System.out.printf("두 값의 차는 %d입니다", -sum);
		}else{
			System.out.printf("두 값의 차는 %d입니다", sum);
		}
	}

}
