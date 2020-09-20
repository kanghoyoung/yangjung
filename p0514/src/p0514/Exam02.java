package p0514;

import java.util.Scanner;

public class Exam02 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("1부터 n까지의 합을 구합니다.\n");
		System.out.print("n의 값:");
		int n = sc.nextInt();
		int sum = 0;
		for(int i=1; i<=n; i++) {
			sum+=i;
			System.out.printf("%d ", i);
			if(i==n) {
				System.out.printf("= ");
			}else{
				System.out.printf("+ ");
			}
		}
		
		System.out.printf("%d\n", sum);
		
		
		sc.close();
		
	}

}
