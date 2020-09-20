package p0423;

public class For6 {
	public static void main(String[] args) {
		int i=1, j;
		while(i<=9) {
			j=1;
			while(j<=9) {
				System.out.printf("%d*%d=%d\t", i, j, i * j);
				j++;
			} // while j
			i++;
			System.out.println();
		} // while i
	}

}
