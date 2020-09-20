package p0429;

import java.util.Scanner;

public class Exam19 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("점수:");
		int num = sc.nextInt();
		if(num>=0 && num<=100){
		switch(num/10) {
		case 10: case 9: case 8:
			System.out.print("수");
		break;
		case 7:
			System.out.print("우");
		break;
		case 6:
			System.out.print("미");
		break;
		case 5:
			System.out.print("양");
		break;
		case 4: case 3: case 2: case 1:
		case 0:
			System.out.print("가");
		break;
		
		}
		}else{
			System.out.print("잘못된 점수입니다.");
	}
	}

}
