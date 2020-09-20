package p0421;

import java.util.Scanner;

public class exam08 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
//		int iMax = Integer.MAX_VALUE;
		int card = 10000; // 교통카드 잔액
		int num;
		
		// for
		System.out.printf("교통카드 잔액 : %d\n", card);
		for(;;) {
			System.out.printf("사용할 금액을 입력하세요. : ");
			num = sc.nextInt(); 
			card-=num;
			System.out.printf("교통카드 잔액 : %d\n", card);
			if(card<num) {
				break;
			}
		}
		System.out.printf("잔액이 부족해 교통카드를 사용할 수 없습니다.");
		
		// do while
		/*
		do {
			System.out.printf("교통카드 잔액 : %d\n", card);
			System.out.printf("사용할 금액을 입력하세요. : ");
			num = sc.nextInt(); 
			card-=num;
			if(card<num) {
				break;
			}
		}while(true);
			System.out.printf("잔액이 부족해 교통카드를 사용할 수 없습니다.");
		*/
			
			
		// while
		/*
		System.out.printf("교통카드 잔액 : %d\n", card);
		while(true) {
			System.out.printf("사용할 금액을 입력하세요. : ");
			int num = sc.nextInt();
			card -= num;
			System.out.printf("교통카드 잔액: %d\n", card);
			if(card<num) {
				break;
			}
		}
		*/
		
//		System.out.printf("잔액이 부족해 교통카드를 사용할 수 없습니다.");
		sc.close();
	}

}
