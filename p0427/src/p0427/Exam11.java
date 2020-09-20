package p0427;

public class Exam11 {

	public static void main(String[] args) {
		int i = 0;
		while(i<5) {
			int j = 5;
			while(j>i) {
				System.out.print("*");
				j--;
			}
			i++;
			System.out.println();
		}
	}

}
