package p0518;

import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTextField;

public class Exam01 extends JFrame {

	Exam01() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("GUI연습");
		this.setLayout(new FlowLayout(FlowLayout.LEFT,20,20));
		JButton bt1 = new JButton("버튼1");
		this.add(bt1);
		JButton bt2 = new JButton("버튼2");
		this.add(bt2);
		JButton bt3 = new JButton("버튼3");
		this.add(bt3);
		JButton bt4 = new JButton("버튼4");
		this.add(bt4);
		JButton bt5 = new JButton("버튼5");
		this.add(bt5);
		JTextField tx1 = new JTextField(20);
		this.add(tx1);
		
		setSize(500,500);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		new Exam01();
	}

}
