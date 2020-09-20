package p0422;

public class Gugudan {

	public static void main(String[] args) {
		int i,j;
		for(i=2; i<=9; i++) {
			for(j=1; j<=9; j++) {
				System.out.printf("%dx%d=%d\t", i, j, i * j);
			}
			System.out.println();
		}
	}

}
