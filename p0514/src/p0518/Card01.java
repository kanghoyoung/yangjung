package p0518;

import java.awt.*;

import javax.swing.*;

public class Card01 extends JFrame {

	public Card01() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("CardLayout 예제");
		this.setLayout(null);
		JButton btn1 = new JButton("버튼1");
		btn1.setBounds(50, 50, 70, 60); // x, y, 폭, 넓이
		this.add(btn1);
		JButton btn2 = new JButton("버튼2");
		btn2.setBounds(80, 80, 70, 60);
		this.add(btn2);
		JButton btn3 = new JButton("버튼3");
		btn3.setBounds(110, 110, 70, 60);
		this.add(btn3);
		setSize(250,250);
		setVisible(true); // 화면에 표시해 주는 기능(true)
	}

	public static void main(String[] args) {
		Card01 card = new Card01();
	}

}
