package p0427;

public class Exam09 {

	public static void main(String[] args) {
		int i = 1, sum = 0;
		do {
			if(i%3==0) {
				System.out.printf("%d\n", i);
				sum+=i;
			}
			i++;
		} while (i<=100);
		System.out.printf("sum : %d", sum);
	}

}
