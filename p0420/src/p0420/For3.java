package p0420;

import java.util.Scanner;

public class For3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int i = 1;
		int num;
		do{
			System.out.print("출력할 단 입력 : ");
			
			num = sc.nextInt();
			System.out.printf("%d x %d = %d\n", num, i, num * i);
			i++;
			
		}while(i!=9);
		
		
//		while (i <= 9) {
//			System.out.printf("%d x %d = %d\n", num, i, num * i);
//			i++;
//		}

//		 for (int i = 1; i <= 9; i++) {
//			 System.out.printf("%d x %d = %d\n", num, i, num * i);
//		 }

//		 for(int i=2; i<=9; i++) {
//			 for(int j=1; j<=9; j++) {
//				 System.out.printf("%d x %d = %d\n", i, j, i*j);
//			 }
//		 }

//		sc.close();
	}

}
