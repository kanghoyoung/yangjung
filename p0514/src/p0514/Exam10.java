package p0514;

import java.util.*;

public class Exam10 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("요소 수:");
		int num=sc.nextInt();
		int[] a=new int[num];
		for(int i=0; i<a.length; i++) {
			System.out.printf("a[%d] = ", i);
			a[i]=sc.nextInt();
		}
		
//		Arrays.sort(a);
		
		System.out.print("찾을 숫자:");
		int num2=sc.nextInt();
//			System.out.println("그 값은 " + "a["+Arrays.binarySearch(a, num2)+"]" + "에 있습니다.");
		
		int i;
		for(i=0; i<a.length; i++) {
			if(a[i]==num2) {
				System.out.println("그 값은 a["+i+"] 에 있습니다");
				break;
			}
		}
		
		
		sc.close();
	}

}
