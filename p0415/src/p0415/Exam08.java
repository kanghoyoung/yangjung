package p0415;

import java.util.Scanner;

public class Exam08 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int test = sc.nextInt(); // 시험 점수
		int num1 = sc.nextInt(); // 면접 점수
		if (test >= 80 && num1 >= 60) {
			System.out.println("합격을 축하합니다.");
		} else {
			System.out.println("아쉽지만 불합격입니다.");
		}
	}

}
