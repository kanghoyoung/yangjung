package p0513;

public class Array1 {

	public static void main(String[] args) {
		int[] a = new int[10];
		for(int i=0; i<a.length; i++) {
			a[i]=i;
		}
		for(int i:a) {
			System.out.printf("%d ", i);
		}
	}

}
