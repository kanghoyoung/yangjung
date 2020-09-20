package p0415;

import java.util.Scanner;

public class Exam01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("점수를 입력하세요 ==> ");
		int num1 = sc.nextInt();
		int num2 = 0;
		if (num1 >= 0 && num1 <= 100) {
//			switch (num1 / 10) {
//			case 10: case 9: case 8:
//				System.out.print("축하합니다. 합격입니다.");
//				break;
//			default:
//				System.out.print("아쉽네요. 불합격입니다.");
//			}

			num2 = num1/10;
			 }else if(num2==10 || num2==9 || num2==8){
			 System.out.println("축하합니다. 합격입니다.");
			 }else{
			 System.out.println("아쉽네요. 불합격입니다.");
		}

	}

}
