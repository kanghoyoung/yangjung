package p0423;

public class Array1 {

	public static void main(String[] args) {
//		int[] a1;
//		a1 = new int[10];
		
		int[] a1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		
		for(int a:a1) {
			System.out.printf("%d\n", a);
		}
		
//		System.out.println(a1.length);
//		System.out.println("------------------");
		
		for(int i=0; i<10; i++) {
//			a1[i] = i+1;
		}
		
		for(int i=0; i<a1.length; i++) {
//			System.out.printf("%d\n", a1[i]);
		}
	}

}
