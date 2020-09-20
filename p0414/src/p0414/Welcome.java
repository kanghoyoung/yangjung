package p0414;

import java.util.Date;

public class Welcome {
	public static void main(String[] args) {
		Date date = new Date();
		int currentHour = date.getHours(); // 현재 시간 가져오기
		System.out.printf("현재시간: %d\n", currentHour);
		if(currentHour < 11) {
			System.out.println("Good Morning");
		} else if(currentHour < 15) {
			System.out.println("Good Afternoon");
		} else if(currentHour < 20) {
			System.out.println("Good Evening");
		} else {
			System.out.println("Good Night");
		}
	}
}
