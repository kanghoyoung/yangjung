package p0513;

import java.util.Scanner;

public class Array2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final int STUDENT = 5;
		int total = 0;
		int[] scores = new int[STUDENT];
		
		for(int i=0; i<scores.length; i++) {
			System.out.print("성적을 입력하세요:");
			scores[i]=sc.nextInt();
		}
		
		for(int i:scores) {
			total+=i;
		}
		
		System.out.printf("평균 성적은 %d\n", total/STUDENT);
		
		for(int num:scores) {
			System.out.printf("%d\n", num);
		}
		
		
	}

}
