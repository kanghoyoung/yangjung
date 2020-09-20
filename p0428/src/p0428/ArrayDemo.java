package p0428;

import java.util.Scanner;

public class ArrayDemo {

	public static void main(String[] args) {
		int[] array = { 0, 1, 2 };
		Scanner s = new Scanner(System.in);
		System.out.println(args[0]);
		System.out.println(args[1]);
		System.out.println(args[2]);
		try {
//			System.out.printf("마지막 원소 : %d\n" + array[3]);
//			System.out.printf("첫번째 원소 : %d\n" + array[0]);
			
			int num1, num2, result;
			num1 = 10;
			num2 = 0;
			result = num1/num2;
			System.out.println(args[3]);
		} catch (ArrayIndexOutOfBoundsException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("원소가 존재하지 않습니다");
		} catch (ArithmeticException e) {
			System.out.println(e.getMessage());
			System.out.println("0으로 나누면 안됩니다.");
//		}
//		} catch (Exception e){
//			System.out.println("예외 오류");
//			System.out.println(e.toString());
		} finally {
			s.close();
			System.out.println("무조건 수행됨");
			System.out.println("어이쿠!!!");
		}
	}
}