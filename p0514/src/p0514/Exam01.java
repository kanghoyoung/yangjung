package p0514;

public class Exam01 {

	public static void main(String[] args) {
		
		System.out.println("정숫값 x, y, z의 평균을 구합니다.");
		
		int x=7, y=8, z=10;
		float avg=(float)x+y+z;
		System.out.printf("x값:%d\n", x);
		System.out.printf("y값:%d\n", y);
		System.out.printf("z값:%d\n", z);
		System.out.printf("x, y, z의 평균은 %.3f입니다.\n", avg/3);
		
	}

}
