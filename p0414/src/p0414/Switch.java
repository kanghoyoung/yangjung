package p0414;

import java.util.Scanner;

public class Switch {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("월을 입력하세요.(1~12)");
		int sung;
		sung = sc.nextInt();
		switch(sung) {
			case 1:
			case 2:
			case 3:
				System.out.println("1사분기");
				break;
			case 4:
			case 5:
			case 6:
				System.out.println("2사분기");
				break;
			case 7:
			case 8:
			case 9:
				System.out.println("3사분기");
				break;
			case 10:
			case 11:
			case 12:
				System.out.println("4사분기");
				break;
			default:
				System.out.println("잘못된 월");
		}
		
	}

}
