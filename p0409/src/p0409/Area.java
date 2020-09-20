package p0409;

import java.util.Scanner;

public class Area {
	static final double PI = 3.14159;
	public static void main(String[] args) {

		Scanner s = new Scanner(System.in);
		int r;
		double area;
		System.out.print("반지름을 입력하세요: ");
		r = s.nextInt();
		// r = new Scanner(System.in).nextInt();
		area = r * r * PI;
		System.out.printf("반지름 : %d일때 원의 넓이 : %f", r, area);
	}
}