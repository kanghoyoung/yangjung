package p0512;

import java.util.Scanner;

public class Array1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int[] aa = new int[4];
		int sum = 0;
		for(int i=0; i<aa.length; i++) {
//			System.out.printf("%d번째 숫자를 입력하세요 : ", i+1);
//			aa[i] = sc.nextInt();
//			sum+=aa[i];
		}
//		System.out.printf("합계:%d\n", sum);
		
		int[] bb = new int[5];
		for(int i=0; i<bb.length; i++) {
			System.out.printf("bb[%d]=%d\n", i, bb[i] );
		}
	}

}
