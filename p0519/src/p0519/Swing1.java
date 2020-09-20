package p0519;

import java.awt.FlowLayout;

import javax.swing.*;

public class Swing1 extends JFrame {

	public Swing1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("레이블 예제");
		this.setLayout(new FlowLayout());
		
		ImageIcon img1 = new ImageIcon("images/gosling.jpg");
		ImageIcon img2 = new ImageIcon("images/icon.gif");
		
		JLabel img123 = new JLabel(img1);
		JLabel img456 = new JLabel(img2);
		JLabel label1 = new JLabel("커피한잔 하실래예,전화주이소");
		JLabel label2 = new JLabel(img1);
		JLabel label3 = new JLabel("제임스 고슬링 입니더!");
		this.add(label3);
		JLabel label4 = new JLabel(img2);
		this.add(img123);
		this.add(img456);
		this.add(label1);
		
		
		setSize(300,500);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Swing1();
	}

}
