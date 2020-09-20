package p0514;

import java.util.Scanner;

public class Exam07 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("정수를 더합니다.");
		int num, num2, tmp, avg=0, sum=0;
		System.out.print("몇 개를 더할까요?:");
		num=sc.nextInt();
		for(int i=0; i<num; i++) {
			System.out.print("정수:");
			num2=sc.nextInt();
			if(num2<0) {
				System.out.println("음수는 더하지 않습니다.");
				continue;
			}
			tmp=num;
			tmp--;
			sum+=num2;
			avg=sum/tmp;
			
		}
		
		System.out.printf("합계는 %d입니다.\n", sum);
		System.out.printf("평균은 %d입니다.\n", avg);
		
		
		sc.close();
	}

}
