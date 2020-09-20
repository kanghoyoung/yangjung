package p0423;

import java.util.Scanner;

public class For5 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
//		System.out.print("시작값 입력 : ");
//		int start = sc.nextInt();
//		System.out.print("끝값 입력 : ");
//		int end = sc.nextInt();
//		System.out.print("증가값 입력 : ");
//		int plus = sc.nextInt();
		String[] y = {"시작값 입력", "끝값 입력", "증가값 입력"};
		int[] x = new int[3];
		for(int i=0; i<x.length; i++) {
			System.out.print(y[i] + " : ");
			x[i] = sc.nextInt();
		}
		
		int i = x[0];
		int sum = 0;
		while(i<=x[1]) {
			sum+=i;
			i+=x[2];
			
		}
		System.out.printf("%d에서 %d까지 %d씩 증가한 값의 합 : %d\n", x[0], x[1], x[2], sum);
	}

}
