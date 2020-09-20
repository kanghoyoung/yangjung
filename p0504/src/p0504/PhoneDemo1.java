package p0504;

class Phone1 {
	String model;
	int value;
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	void print() {
		System.out.println(value+"만원짜리 "+model+" 스마트폰");
	}
}

public class PhoneDemo1 {

	public static void main(String[] args) {
		Phone1 myPhone = new Phone1();
		myPhone.setModel("갤럭시s10");
		myPhone.setValue(120);
		myPhone.print();
		String mo = myPhone.getModel();
		int va = myPhone.getValue();
		System.out.println("model :"+mo);
		System.out.println("Value :"+va);
		
	}

}
