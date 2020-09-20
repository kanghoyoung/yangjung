package p0423;

import java.util.Scanner;

public class While1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("구구단 중에서 출력하고 싶은 단을 입력하시오: ");
		int num = sc.nextInt();
		int i = 1;
		while(i<=9) {
			System.out.printf("%2d *%2d = %2d\n", num, i, num * i);
			i+=1;
		}
		
	}

}
