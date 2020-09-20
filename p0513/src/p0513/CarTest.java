package p0513;

class Truck extends Car {
	int Capacity; // 적재량
}

class Sedan extends Car { 
	int SeatNum;

	public int getSeatNum() {
		return SeatNum;
	}

	public void setSeatNum(int seatNum) {
		SeatNum = seatNum;
	}
}

class Car {
	
	String color;
	int speed;
	
	public void upSpeed(int value) {
		speed+=value;
	}
	public void downSpeed(int value) {
		speed-=value;
	}
	public void print() {
		System.out.println("자동차의 색상은 " + color + "이며 속도는 " + speed + "km입니다.");
	}
}

public class CarTest {

	public static void main(String[] args) {
		Sedan se1 = new Sedan();
		se1.color="흰색";
		se1.speed=60;
		se1.SeatNum=5;
		System.out.println("자동차의 색상은 " + se1.color + "이며 속도는 " + se1.speed + "km입니다.");
		System.out.println("좌석 : "+se1.SeatNum);
	}

}
