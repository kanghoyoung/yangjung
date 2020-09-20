package p0511;

public class Tiger extends Predator {
	
	@Override
	public String getFood() {
		return "apple";
	}
	
	public static void main(String[] args) {
		Tiger t=new Tiger();
		System.out.println(t.isPredator());
	}
}