package exam;

public class HumanTester2 extends Human {
	
	HumanTester2(String name, int height, int weight) {
		super(name, height, weight);
	}
	
	public static void main(String[] args) {
		
		Human h1 = new Human("길동", 170, 60);
		Human h2 = new Human("철수", 166, 72);
		
		h1.weight(3);
		h2.weight2(5);
		
		System.out.println("이름:"+h1.name);
		System.out.println("신장:"+h1.height+"cm");
		System.out.println("체중:"+h1.weight+"kg");
		System.out.println();
		
		System.out.println("이름:"+h2.name);
		System.out.println("신장:"+h2.height+"cm");
		System.out.println("체중:"+h2.weight+"kg");
		
	}
	
}
