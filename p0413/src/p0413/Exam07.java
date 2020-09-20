package p0413;

import java.util.Scanner;

public class Exam07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int num1 = sc.nextInt(); // 반지름
		int num2 = sc.nextInt(); // 높이
		final double pi = 3.14;
		System.out.println("원기둥의 밑면의 반지름은? " + num1);
		System.out.println("원기둥의 높이는?" + num2);
		System.out.printf("원기둥의 부피는 %.1f", (num1*num1*num2*pi));

	}

}
