package p0514;

import java.util.Scanner;

public class Exam05 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int n,n2, sum=0;
		float avg=0;
		
		System.out.println("정수를 더합니다.");
		System.out.print("몇 개를 더할까요?:");
		n=sc.nextInt();
		
		for(int i=0; i<n; i++) {
		
			System.out.printf("정수(0으로 종료):");
			n2=sc.nextInt();
			
			sum+=n2;
			
			if(n2==0){
				n=i;
				break;
			}
		}
		
		avg=sum/n;
		
		System.out.printf("합계는 %d입니다.\n", sum);
		System.out.printf("평균는 %d입니다.\n", (int)avg);
		
		
		sc.close();
	}

}
