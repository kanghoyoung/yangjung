package p0423;

import java.util.Scanner;

public class DoWhile3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("찾을 숫자를 입력하세요. : ");
		int answer = sc.nextInt();
		int guess;
		int count = 0;
		do {
			System.out.print("정답을 추측하여 보세요. : ");
			guess = sc.nextInt();
			count++;
			if(answer>guess) {
				System.out.printf("LOW\n");
			}else if(answer<guess) {
				System.out.printf("HIGH\n");
			}
			
		}while(answer!=guess);
		System.out.printf("축하합니다. 시도횟수=%d\n", count);
	}

}
