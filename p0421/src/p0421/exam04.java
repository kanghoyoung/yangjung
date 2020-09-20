package p0421;

import java.util.Scanner;

public class exam04 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("등수를 입력하세요 : ");
		int num = sc.nextInt(); // 등수
		switch(num) {
		case 1:
			System.out.printf("아주 잘했습니다");
			break;
		case 2: case 3:
			System.out.printf("잘했습니다");
			break;
		case 4: case 5: 
		case 6:
			System.out.printf("보통입니다");
			break;
		default:
			System.out.printf("노력해야겠습니다");
			
		}
		
		sc.close();
	}

}
