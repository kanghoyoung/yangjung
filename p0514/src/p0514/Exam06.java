package p0514;

import java.util.Scanner;

public class Exam06 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("정수를 더합니다.");
		System.out.print("몇 개를 더할까요?:");
		int num=sc.nextInt();
		
		int sum=0, avg=0;
		for(int i=0; i<num; i++) {
			
			System.out.print("정수:");
			int num2=sc.nextInt();
			sum+=num2;
			if(sum>1000) {
				sum-=num2;
				num=i;
				System.out.println("합계가 1,000을 넘었습니다.");
				System.out.println("마지막 값은 무시합니다.");
				break;
			}

		}
		
		avg=sum/num;
		
		System.out.printf("합계는 %d입니다.\n", sum);
		System.out.printf("평균은 %d입니다.\n", avg);
		
		
		sc.close();
	}

}
