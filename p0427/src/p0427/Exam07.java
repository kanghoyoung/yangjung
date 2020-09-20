package p0427;

import java.util.Scanner;

public class Exam07 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%3==0) {
				sum += i;
				System.out.printf("%d\n", i);
			}
		}
		System.out.printf("sum : %d", sum);
	}

}
