package p0413;

import java.util.Scanner;

public class Exam06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt(); // 주행거리
		int num2 = sc.nextInt(); // 사용한 휘발유 양
		System.out.println("주행거리를 입력하세요: " + num1);
		System.out.println("사용한 휘발유 양을 입력하세요: " + num2);

		double num3 = (double)num1 / num2;
		System.out.println("연비: " + num3);
	}

}
