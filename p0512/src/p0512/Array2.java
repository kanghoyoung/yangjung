package p0512;

public class Array2 {

	public static void main(String[] args) {
		int[][] aa = {
				{10, 20, 30},
				{40, 50, 60},
				{70, 80, 90},
		};
		
		int sum, sum1, sum2=0;
		for(int i=0; i<aa.length; i++) {
			sum = 0;
			for(int j=0; j<aa[i].length; j++) {
				System.out.printf("%4d", aa[i][j]);	
				sum+=aa[i][j];
				
				// 합계
				sum2+=aa[i][j];
			}
			System.out.printf("%5d\n",sum);
		}
		
		for(int i=0; i<aa.length; i++) {
			sum1=0;
			for(int j=0; j<aa[i].length; j++) {
				sum1+=aa[j][i];
			}
			System.out.printf("%4d", sum1);
		}
		
		System.out.printf(" 합계:%d\n", sum2);
	}

}
