package p0423;

import java.util.Scanner;

public class For7 {
	public static void main(String[] args) {
		
		Coffee c = new Order("카페라떼", "카푸치노", "아메리카노");
		
		Scanner sc = new Scanner(System.in);
		int order;
		do {
			System.out.printf("손님 주문하시겠습니까 ?\n");
			System.out.printf("<1>카페라떼 <2>카푸치노 <3>아메리카노 <4>그만시킬래요 ==> ");
			order = sc.nextInt();
			if(order==1) {
				System.out.printf("#"+c.kaperatte+"\t주문하셨습니다.\n");
				System.out.println();
			}else if(order==2) {
				System.out.printf("#"+c.kapuchino+"\t주문하셨습니다.\n");
				System.out.println();
			}else if(order==3) {
				System.out.printf("#"+c.amerikano+"\t주문하셨습니다.\n");
				System.out.println();
			}else if(order==4) {
				System.out.printf("주문하신 커피 준비하겠습니다.\n");
				System.out.println();
			}
		}while(order!=4);
	}

}
