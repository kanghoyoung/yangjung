package p1;

public class Student1 {
	
	int hakbun; // 학번
	String name; // 이름
	String address; // 주소

	public void print() {
		System.out.println("학번:"+hakbun+",이름:"+name+",주소:"+address);
	}
	
	public int getHakbun() {
		return hakbun;
	}

	public void setHakbun(int hakbun) {
		this.hakbun = hakbun;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
