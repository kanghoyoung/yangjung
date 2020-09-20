package p0511;

public class HouseDog extends Dog {
	
	public HouseDog(String name) {
		this.setName(name);
	}
	
	public HouseDog(int type) {
		if(type==1) {
			this.setName("yorkshire");
		}else if(type==2) {
			this.setName("bulldog");
		}
	}
	
	public static void main(String[] args) {
		HouseDog dog = new HouseDog("poppy");
		HouseDog york = new HouseDog(2);
		
		System.out.println(dog.name);
		System.out.println(york.name);
	}
	
	public void sleep(int hour) {
		System.out.println(this.name + " zzz in house " + hour + " hours");
	}
	
	@Override
	public void sleep() { 
		System.out.println(this.name + " zzz in house"); 
	}
}
