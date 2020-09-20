package p0429;

import java.util.*;

public class Exam22 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("정수 a:");
		int num = sc.nextInt();
		System.out.print("정수 b:");
		int num2 = sc.nextInt();
		System.out.print("정수 c:");
		int num3 = sc.nextInt();
		
		if(num > num2) {
			if(num2 > num3) {
				System.out.println(num3);
			}else{
				System.out.println(num2);
			}
		}else{
			if(num > num3) {
				System.out.println(num3);
			}else{
				System.out.println(num);
			}
		}
//		int[] arr = {num, num2, num3};
//		Arrays.sort(arr);
//		System.out.printf("최솟값은 %d입니다.", arr[0]);
	}

}
