package p0429;

import java.util.Scanner;

public class Exam20 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("실수 a:");
		float f1 = sc.nextFloat();
		System.out.print("실수 b:");
		float f2 = sc.nextFloat();
		if(f1>f2) {
			System.out.printf("큰 쪽의 값은 %.1f입니다.", f1);
		}else if(f1<f2){
			System.out.printf("큰 쪽의 값은 %.1f입니다.", f2);
		}
	} 

}
