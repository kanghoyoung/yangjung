package p0514;

import java.util.Scanner;

public class Exam11 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("요소 수:");
		int num=sc.nextInt();
		
		double num2;
		double sum=0;
		
		double[] a=new double[num];
		
		for(int i=0; i<a.length; i++) {
			System.out.printf("a[%d] = ",i);
			num2=sc.nextDouble();
			a[i]=num2;
		}
		
		for(double i:a) {
			sum+=i;
		}
		
		System.out.printf("모든 요소의 합은 %.1f입니다\n", sum);
		System.out.printf("모든 요소의 평균은 %.2f입니다\n", sum/a.length);
		
		sc.close();
	}

}
