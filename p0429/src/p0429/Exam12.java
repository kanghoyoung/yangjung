package p0429;

import java.util.Scanner;

public class Exam12 {

	public static void main(String[] args) {
		System.out.print("정숫값:");
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		if(num<0) {
			System.out.printf("절댓값은 %d입니다.", -num);
		}else if(num>0){
			System.out.printf("절댓값은 %d입니다.", num);
		}
		
//		System.out.printf("절댓값은 %d입니다.", Math.abs(num));
	}

}
