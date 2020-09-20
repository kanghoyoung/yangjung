package exam;

public class Human {
	
	int height; // 신장
	int weight; // 체중
	String name; // 이름
	
	Human(String name, int height, int weight) {
		this.name=name;
		this.height=height;
		this.weight=weight;
	}
		
	// 체중 증가
	void weight(int value) {
		weight+=value;
	}
			
	// 체중 감소
	void weight2(int value) {
		weight-=value;
	}
	
}
