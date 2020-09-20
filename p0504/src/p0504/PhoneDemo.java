package p0504;

class Phone {
	String model;
	int value;
	Phone() {
		model="갤럭시s10";
		System.out.println("생성자");
	}
	void print() {
		System.out.println(value+"만원짜리 "+model+" 스마트폰");
	}
}

public class PhoneDemo {

	public static void main(String[] args) {
		Phone myPhone = new Phone();
//		myPhone.model="갤럭시 노트10";
		myPhone.value=120;
		myPhone.print();
		
		Phone yourPhone = new Phone();
		yourPhone.model="iPhone7";
		yourPhone.value=100;
		yourPhone.print();
		
		Phone p1 = new Phone();
		p1.model="G6";
		p1.value=110;
		p1.print();
	}

}
