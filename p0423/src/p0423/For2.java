package p0423;

import java.util.Scanner;

public class For2 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("시작값 입력 : ");
		int start = sc.nextInt();
		System.out.print("끝값 입력 : ");
		int end = sc.nextInt();
		System.out.print("증가값 입력 : ");
		int plus = sc.nextInt();
		int sum = 0;
		for(int i=start; i<=end; i+=plus) {
			sum+=i;
		}
		System.out.printf("%d에서 %d까지 %d씩 증가한 값의 합: %d\n", start, end, plus, sum);
	}

}
