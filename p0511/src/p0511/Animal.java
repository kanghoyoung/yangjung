package p0511;

public class Animal {
	String name;
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	public static void main(String[] args) {
		Animal cat = new Animal();
		Animal dog = new Animal();
		cat.setName("body");
		dog.setName("happy");
		System.out.println(cat.name);
		System.out.println(dog.name);
		
		
	}
}