package p0421;

import java.util.Scanner;

public class exam07 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("시작값 입력 : ");
		int start = sc.nextInt(); // 시작값
		System.out.printf("끝값 입력 : ");
		int end = sc.nextInt(); // 끝값
		System.out.printf("증가값 입력 : ");
		int plus = sc.nextInt(); // 증가값
		
		int sum = 0; // 합계
		
		for(int i=start; i<=end; i+=plus) {
			sum+=i;
		}
		
		System.out.printf("%d에서 %d까지 %d씩 증가한 값의 합: %d", start, end, plus, sum);
		
		sc.close();
	}

}
