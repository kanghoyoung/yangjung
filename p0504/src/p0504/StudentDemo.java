package p0504;

import p1.Student1;

class Student {
	
}

public class StudentDemo {
	
	
	public static void main(String[] args) {
		Student1 s1 = new Student1();
		Student1 s2 = new Student1();
		Student1 s3 = new Student1();
		Student1 s4 = new Student1();
		Student1 s5 = new Student1();
		s1.setHakbun(1);
		s1.setName("이름1");
		s1.setAddress("부산");
		s1.print();
		
		s2.setHakbun(2);
		s2.setName("이름2");
		s2.setAddress("부산");
		s2.print();
		
		s3.setHakbun(3);
		s3.setName("이름3");
		s3.setAddress("서울");
		s3.print();
		
		s4.setHakbun(4);
		s4.setName("이름4");
		s4.setAddress("서울");
		s4.print();
		
		s5.setHakbun(5);
		s5.setName("이름5");
		s5.setAddress("서울");
		s5.print();
		
	}
	

}
