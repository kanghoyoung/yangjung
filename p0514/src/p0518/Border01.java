package p0518;

import java.awt.BorderLayout;

import javax.swing.*;

public class Border01 extends JFrame {

	Border01() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("BorderLayout 예제");
		this.setLayout(new BorderLayout(10,10));
		JButton btn1 = new JButton("버튼1");
		this.add(btn1, BorderLayout.NORTH);
		JButton btn2 = new JButton("버튼2");
		this.add(btn2, BorderLayout.SOUTH);
		JButton btn3 = new JButton("버튼3");
		this.add(btn3, BorderLayout.WEST);
		JButton btn4 = new JButton("버튼4");
		this.add(btn4, BorderLayout.EAST);
		JButton btn5 = new JButton("Center");
		this.add(btn5, BorderLayout.CENTER);
		setSize(250,250);
		setVisible(true); // false 화면 안보임
	}
	
	public static void main(String[] args) {
		new Border01();
	}

}
