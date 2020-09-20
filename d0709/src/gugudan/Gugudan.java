package gugudan;

public class Gugudan {
	int sum;
	int i=1;
	public Gugudan(int temp) {
		for (i=1; i<=9; i++) {
			sum = temp * i;
			System.out.println(temp + " * " + i);
		}
	}
	public int getSum() {
		return sum;
	}
	public int getI() {
		return i;
	}
	
}
