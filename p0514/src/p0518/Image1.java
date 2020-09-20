package p0518;

import javax.swing.*;
import java.awt.*;

public class Image1 extends JFrame {

	public Image1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Image 연습");
		this.setLayout(new FlowLayout());
		ImageIcon img1 = new ImageIcon("image/java1.png");
		ImageIcon img2 = new ImageIcon("image/java2.png");
		JButton btn1 = new JButton("버튼1",img1);
		this.add(btn1);
		JLabel lb1 = new JLabel("레이블1입니다.");
		JLabel lb2 = new JLabel(img2);
		this.add(lb1);
		this.add(lb2);
		JCheckBox ch1 = new JCheckBox("c++");
		JCheckBox ch2 = new JCheckBox("Java");
		JCheckBox ch3 = new JCheckBox("c#",true); // 체크되어있는상태 
		this.add(ch1);
		this.add(ch2);
		this.add(ch3);
		
		JRadioButton rd1 = new JRadioButton("고래");
		JRadioButton rd2 = new JRadioButton("상어");
		JRadioButton rd3 = new JRadioButton("새우");
		this.add(rd1);
		this.add(rd2);
		this.add(rd3);
		ButtonGroup gr = new ButtonGroup();
		gr.add(rd1);
		gr.add(rd2);
		gr.add(rd3);
		
		setSize(200,300);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Image1();
	}

}
