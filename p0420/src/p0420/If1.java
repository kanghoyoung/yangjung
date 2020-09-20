package p0420;

import java.util.Scanner;

public class If1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		System.out.print("정수를 입력하세요. : ");
		num = sc.nextInt();
		if(num%7==0) {
			System.out.printf("입력된 수는 %d는 7의 배수다.", num);
		} else {
			System.out.printf("입력된 수는 %d는 7의 배수가 아니다.", num);
		}
		
		sc.close();
	}

}
