package p0423;

import java.util.Scanner;

public class Array2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] score = new int[5];
		int sum = 0; // 합계
		double avg = 0.0; // 평균
		for(int i=0; i<score.length; i++) {
			System.out.printf("점수를 입력하세요 (%d) : ", i+1);
			score[i] = sc.nextInt();
			
//			sum+=score[i];
		}
		
		for(int i=0; i<score.length; i++) {
			System.out.printf("%d 점수: %d\n", i+1, score[i]);
			sum+=score[i];
		}
		
		avg=(double)sum/score.length;
//		for(int i:score) {
//			System.out.printf("점수: %d\n" + i);
//		}
		System.out.printf("합계 : %d\n", sum);
		System.out.printf("평균 : %.2f\n", avg);
		
	}

}
