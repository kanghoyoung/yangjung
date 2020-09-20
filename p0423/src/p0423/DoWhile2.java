package p0423;

import java.util.*;

public class DoWhile2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		double d = Math.random();
		int random = (int)(d*100);
		int count = 0;
		int guess;
		do {
			System.out.print("정답을 추측하여 보세요: ");
			guess = sc.nextInt();
			count++;
			if(random>guess) {
				System.out.printf("LOW\n");
			}else if (random<guess) {
				System.out.printf("HIGH\n");
			}
		} while(random!=guess);
		System.out.printf("축하합니다. 시도횟수=%d\n", count);
	}

}
