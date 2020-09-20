package p0423;

public class For1 {

	public static void main(String[] args) {
		int even = 0; // 짝수
		int odd = 0; // 홀수
		int i;
		
		for(i=1; i<=100; i++) {
			if(i%2==0) {
				even+=i;
			}else{
				odd+=i;
			}
		}
		System.out.printf("1부터 100까지의 수 중 홀수 합 = %d\n", odd);
		System.out.printf("1부터 100까지의 수 중 짝수 합 = %d\n", even);
	}

}
