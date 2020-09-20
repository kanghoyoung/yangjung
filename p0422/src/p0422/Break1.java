package p0422;

public class Break1 {
	public static void main(String[] args) {
		int sum = 0;
		/*
		for(int i=1; i<=100; i++) {
			sum+=i;
			System.out.printf("%d %d\n", i, sum);
			if(sum>100) {
				break;
			}
		}
		*/
		for(int i=1; i<=100; i++) {
			if(i%2==1) {
				continue;
			}
			System.out.printf("%d ", i);
		}
	}

}
