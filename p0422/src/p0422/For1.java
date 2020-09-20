package p0422;

public class For1 {

	public static void main(String[] args) {
		
		for(int i=0; i<5; i++) {
			for(int j=0; j<5-i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
