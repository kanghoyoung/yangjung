package exam;

import java.util.Scanner;

public class CarTester {
	
	public static void main(String[] args) {
		
		Car[] car1 = new Car[10];
//		car1[0] = new Car_Model("k3", "서울999-99", 1660, 1500, 3640, 40.0, 10 , 12.0);
//		car1[0].show();
//		System.out.println();
//		car1[1] = new Car_Model("k5", "서울999-98", 1660, 1525, 3695, 41.0, 10, 12.0);
//		car1[1].show();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("차량 데이터를 입력하세요.");
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("번호 : ");
		String number = sc.next();
		
		System.out.print("전폭 : ");
		int height = sc.nextInt();
		System.out.print("전고 : ");
		int line = sc.nextInt();
		System.out.print("전장 : ");
		int width = sc.nextInt();
		
		System.out.print("탱크용량  : ");
		double tank = sc.nextDouble();
		System.out.print("연료량 : ");
		double fuel = sc.nextDouble();
		System.out.print("연비 : ");
		double gas = sc.nextDouble();
		
		car1[0]=new Car_Model(name, number, height, line, width, tank, fuel, gas);
		
		while(true) {
			System.out.printf("현재위치:(%.2f)\n", car1[0].getX());
			System.out.printf("남은연료:%.2f\n", car1[0].getFuel());
			System.out.print("이동하겠습니까? [0:No/1:Yes]");
			if(sc.nextInt()==0) {
				System.out.println("프로그램 종료");
				break;
			}
			System.out.print("x방향으로의 거리:");
			double x=sc.nextDouble();
			System.out.print("y방향으로의 거리:");
			double y=sc.nextDouble();
			if(!car1[0].move(x, y)) {
				System.out.println("연료 부족!!");
			}
		}
		
	}

}
