package p0420;

public class For1 {

	public static void main(String[] args) {
		int sum = 0, sum2 = 0;
		for(int i=1; i<=100; i++) {
			if(i%2==0) {
				sum = sum + i;
			} else {
				sum2 = sum2 + i;
			}
//			System.out.printf("%d\n", i);
//			System.out.printf("sum=%d\n", sum);
		}
		System.out.printf("짝수 합=%d\n", sum);
		System.out.printf("홀수 합=%d\n", sum2);

	}

}
