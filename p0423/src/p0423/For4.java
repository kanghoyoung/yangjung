package p0423;

public class For4 {

	public static void main(String[] args) {
		int i=1;
		int j=100;
		int even = 0; // 짝수
		int odd = 0; // 홀수
		while(i<=j) {
			if(i%2==0) {
				even+=i;
			}else{
				odd+=i;
			}
			i++;
		}
		i=1;
		System.out.printf("%d부터 %d까지의 수중 홀수 합 = %d\n", i, j, odd);
		System.out.printf("%d부터 %d까지의 수중 짝수 합 = %d\n", i, j, even);
	}

}
