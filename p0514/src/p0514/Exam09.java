package p0514;

import java.util.*;

public class Exam09 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int student=0;
		int sum=0;//합계
		float avg=0;//평균
		
		System.out.print("사람 수:");
		student=sc.nextInt();
		int[] score=new int[student];
		System.out.println("점수를 입력하세요.");
		int num;
		for(int i=0; i<score.length; i++) {
			System.out.printf("%d번의 점수:", i+1);
			num=sc.nextInt();
			score[i]=num;
		}
		
		for(int i=0; i<score.length; i++) {
			sum+=score[i];
		}
		Arrays.sort(score);
		avg=(float)sum/score.length;
		
		int max=score[0], min=score[0];
		for(int i=0; i<score.length; i++) {
			if(max<score[i]) {
				max=score[i];
			}
			if(min>score[i]) {
				min=score[i];
			}
		}
		
		System.out.printf("합계는 %d점 입니다.\n", sum);
		System.out.printf("평균은 %.1f점 입니다.\n", avg);
		System.out.printf("최고점은 %d점 입니다.\n", max);
		System.out.printf("최저점은 %d점 입니다.\n", min);
		
		sc.close();
	}

}
