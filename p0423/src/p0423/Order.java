package p0423;

public class Order extends Coffee {
	
	Order(String s, String s1, String s2) {
		kaperatte = s;
		kapuchino = s1;
		amerikano = s2;
	}
	
	public static void main(String[] args) {
		int[][] x = new int[5][5];
		int z = 0;
		for(int i=0; i<x.length; i++) {
			for(int j=0; j<x[0].length; j++) {
				z++;
				x[i][j]=z;
				System.out.printf("%d\t", x[i][j]);
			}
			System.out.println();
		}
	}

}
