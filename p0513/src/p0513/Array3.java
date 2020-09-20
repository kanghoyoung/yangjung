package p0513;

import java.util.*;

public class Array3 {

	public static void main(String[] args) {
		int[] number = new int[5];
		Scanner sc = new Scanner(System.in);
		for(int i=0; i<number.length; i++) {
//			System.out.print("정수를 입력하세요:");
//			number[i]=sc.nextInt();
			int num = (int)(Math.random()*100)+1;
			number[i]=num;
		}
		
		System.out.println("최초 리스트");
		for(int num:number) {
			System.out.printf("%2d \n", num);
		}
		
		Arrays.sort(number);
		System.out.println("정렬 리스트");
		for(int num:number) {
			System.out.printf("%2d \n", num);
		}
		
		sc.close();
	}

}
