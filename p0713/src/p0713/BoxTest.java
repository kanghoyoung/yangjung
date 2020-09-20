package p0713;

class Box<T> {
	private T data;
	public void set(T data) { this.data = data; }
	public T get() { return data; }
}

public class BoxTest {

	public static void main(String[] args) {
		Box<Integer> b = new Box<>();
		b.set(100);
		int i = b.get();
		System.out.println(i);
		
		Box<String> b1 = new Box<>();
		b1.set("Hello World!!");
		String s = b1.get();
		System.out.println(s);
	}

}
