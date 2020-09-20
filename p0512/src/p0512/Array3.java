package p0512;

public class Array3 {
	public static void main(String[] args) {
		
//	int[][] arr = new int[10][10];
//	for(int i=1; i<arr.length; i++) {
//		for(int j=1; j<arr[i].length; j++) {
//			System.out.print(i + "*" + j + "=" + (i * j) + "\t");
//		}
//		System.out.println();
//	}
	
	int[][] arr = new int[4][4];
	int num = 1, sum = 0, sum1;
	for(int i=0; i<arr.length; i++) {
		sum = 0;
		for(int j=0; j<arr[i].length; j++) {
			arr[i][j]=num;
			num++;
			System.out.print(arr[i][j]+"\t");
			sum+=arr[i][j]; // 열
		}
		System.out.print("열 "+sum); // 열
		System.out.println();
	} 
	
	for(int i=0; i<arr.length; i++) {
		sum1=0;
		for(int j=0; j<arr[i].length; j++) {
			sum1+=arr[j][i];
			
		}
		System.out.print("행 "+sum1+"\t");
	}
	}

}
