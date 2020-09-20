package p0511;

import java.util.*;

public class Test {
	int a; // 객체변수
	
	public void varTest(Test test) {
		test.a++;
	}
	
	public void say(String s) {
		if("fool".equals(s)) {
			return;
		}
		System.out.println("나의 별명은 " + s + " 입니다.");
	}

	public static void main(String[] args) {
		Test t1 = new Test();
		t1.a=1;
		t1.varTest(t1);
		System.out.println(t1.a);
		t1.say("fool");
		
		ArrayList<String> aList = new ArrayList<>();
		aList.add("hello");
		aList.add("java");
		String hello = aList.get(0);
		String java = (String)aList.get(1);
		
		ArrayList<String> li = new ArrayList<>();
		li.add("123");
		li.add("456");
//		System.out.println(li.remove("123"));
//		System.out.println(li.remove(0));
		
		
//		String[] weeks={"월", "화", "수", "목", "금", "토"};
		String[] weeks=new String[6];
		weeks[0]="월";
//		System.out.println(weeks[0]);
		
		StringBuffer sb = new StringBuffer();
		sb.append("111");
		sb.append(" 123");
//		System.out.printf("%s\n", sb.toString());
		
		Scanner sc = new Scanner(System.in);
		int[] num = new int[10];
		for(int i=0; i<10; i++) {
			num[i] = i+1;
			
		}
		for(int i=0; i<10; i++) {
			if(num[i]%3!=0) {
				continue;
			}
//			System.out.printf("%d ", num[i]);
		}
		
//		int[] score = {50, 43, 48, 55, 70};
//		String[] subject = {"Java", "Python", "Android", "JSP", "HTML"};
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("Java", 50);
		map.put("Python", 32);
		map.put("Android", 42);
		map.put("JSP", 77);
		map.put("HTML", 55);
		map.put("delete", 111);
		
//		System.out.println(map.containsKey("HTML"));
//		System.out.println(map.remove("delete"));
//		System.out.println(map.size());
		
		
//		while(true) {
//			System.out.print("과목이름:");
//			str=sc.next();
//			for(int i=0; i<map.size(); i++) {
//			if(map.containsKey(str)) {
//				System.out.println(str+"의 점수: "+map.get(str));
//				}
//			}
//			if(str.equals("그만")){
//				break;
			}
		}
//	}

//}
