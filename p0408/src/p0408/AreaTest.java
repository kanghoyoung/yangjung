package p0408;

public class AreaTest {
	final static double PI = 3.14159;
	public static void main(String[] args) {
		double radius,area;
		radius = 5.0;
		area = PI * radius * radius;
		System.out.printf("원의 면적은 :%20.5f",area);
	}
}