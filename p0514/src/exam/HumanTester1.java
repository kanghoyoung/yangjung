package exam;

public class HumanTester1 extends Human {
	
	HumanTester1(String name, int height, int weight) {
		super(name, height, weight); // 부모 클래스의 생성자를 호출
	}

	public static void main(String[] args) {
		
		Human h1 = new Human("길동", 170, 60);
		Human h2 = new Human("철수", 166, 72);
		
		System.out.println("이름:"+h1.name);
		System.out.println("신장:"+h1.height+"cm");
		System.out.println("체중:"+h1.weight+"kg");
		System.out.println();
		
		System.out.println("이름:"+h2.name);
		System.out.println("신장:"+h2.height+"cm");
		System.out.println("체중:"+h2.weight+"kg");
		
	}

}
