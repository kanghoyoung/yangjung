package p0511;

public class Counter {

	static int count=0;
	
	int count2=0;
	Counter() {
		count++;
		count2++;
		System.out.println("cv:"+count);
		System.out.println("iv:"+count2);
	}
	
	public static int getCount() {
		return count;
	}
	
	public static void main(String[] args) {
		Counter counter1 = new Counter();
		Counter counter2 = new Counter();
		Counter counter3 = new Counter();
		
		System.out.println(Counter.getCount());
	}

}
