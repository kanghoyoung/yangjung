package p0420;

import java.util.Scanner;

public class For2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 값을 입력하세요 : ");
		int num = sc.nextInt();
		int sum = 0;
		for(int i=1; i<=num; i++) {
			sum+=i;
			System.out.printf("i=%d\n", i);
		}
		System.out.printf("1부터 %d까지의 합 : %d\n", num, sum);
		sc.close();
	}

}
