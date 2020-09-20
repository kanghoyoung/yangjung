package p0421;

import java.util.Scanner;

public class exam06 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		char c = ' ';
		System.out.printf("처리할 수를 입력하세요 : ");
		int num = sc.nextInt();
		if(num>0) {
			c = '+';
			System.out.printf("입력한 수는%c입니다.\n", c);
		}else if(num<0) {
			c = '-';
			System.out.printf("입력한 수는%c입니다.\n", c);
		}else if(num==0){
			System.out.print("입력한 수는 0 입니다.");
		}
		
		sc.close();
	}

}
