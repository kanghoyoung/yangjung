package exam;

public class Car implements Carable {
	
	String name; // 자동차 이름
	String number; // 자동차 번호
	
	int height; // 높이
	int line; // 길이
	int width; // 폭
	
	double location; // 현재위치
	double x; // x좌표
	double y; // y좌표
	double tank; //탱크용량
	double fuel; // 남은연료
	double gas; // 연비
	
	public Car (String name, String number,
			int height, int line, int width,
			double tank, double fuel, double gas) {
		
		this.name=name; // 이름
		this.number=number; // 번호
			
		this.height=height; // 높이
		this.line=line; // 길이
		this.width=width; // 폭
			
		this.tank=tank; // 탱크용량
		
		if(this.fuel<=this.tank) {
			this.fuel=fuel;
		}else{
			this.fuel=tank;
		}
		
		this.gas=gas; // 연비
		
		
	}
	
	
	void show() {
		System.out.println("이름:" + this.name);
		System.out.println("번호:" + this.number);
		System.out.println("전폭:" + this.height + "mm");
		System.out.println("전고:" + this.line + "mm");
		System.out.println("전장:" + this.width + "mm");
		System.out.println("탱크:" + this.tank + "리터");
		System.out.println("연비:" + this.gas + "km/리터");
	}
	
	@Override
	public boolean move(double x, double y) {
		double location = Math.sqrt((int)Math.pow(x, 2) + (int)Math.pow(y, 2)); // 이동거리
		double d = location / gas; // gas 연비
		if(gas<d) {
			return false; // 연료부족
		}else{
			fuel=fuel-d;
			this.x+=x;
			this.y+=y;
			return true;
		}
	}
	
	@Override
	public void refuel(double f) {
		if(f>0) {
			fuel+=f;
			if(fuel>tank) {
				fuel=tank;
			}
		}
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getLine() {
		return line;
	}

	public void setLine(int line) {
		this.line = line;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public double getLocation() {
		return location;
	}

	public void setLocation(double location) {
		this.location = location;
	}

	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return y;
	}

	public void setY(double y) {
		this.y = y;
	}

	public double getTank() {
		return tank;
	}

	public void setTank(double tank) {
		this.tank = tank;
	}

	public double getFuel() {
		return fuel;
	}

	public void setFuel(double fuel) {
		this.fuel = fuel;
	}

	public double getGas() {
		return gas;
	}

	public void setGas(double gas) {
		this.gas = gas;
	}
	
}
