package p0428;

import java.util.StringTokenizer;

public class Exception1 {

	public static void main(String[] args) {
		String s = "Time is Money";
		StringTokenizer st = new StringTokenizer(s); // 한개 씩 읽는 것
		while(st.hasMoreTokens()) {
			System.out.print(st.nextToken()+"+");
		}
		System.out.print(st.nextToken());
	}

}
