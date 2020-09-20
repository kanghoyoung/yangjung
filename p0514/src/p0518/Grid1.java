package p0518;

import java.awt.*;
import javax.swing.*;

public class Grid1 extends JFrame {

	public Grid1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Grid 연습");
		Container c = getContentPane();
		c.setLayout(new GridLayout(3,3)); // 행 우선
		JButton[] btn = new JButton[9];
		for(int i=0; i<btn.length; i++) {
			btn[i] = new JButton("버튼"+(i+1));
			c.add(btn[i]);
		}
		setSize(250,250);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new Grid1();
	}

}
