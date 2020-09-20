package p0520;

import java.awt.*;

import javax.swing.*;

public class ImageIcon1 extends JFrame {

	public ImageIcon1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("이미지 예제");
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		// 노멀 상태
		ImageIcon normalIcon = new ImageIcon("images/normalIcon.gif");
		// 클릭한 상태
		ImageIcon pressedIcon = new ImageIcon("images/bear.png");
		// 버튼위에 올라간 경우
		ImageIcon rolloverIcon = new ImageIcon("images/rolloverIcon.gif");
		
		JButton btn = new JButton("call~~", normalIcon);
		btn.setPressedIcon(pressedIcon);
		btn.setRolloverIcon(rolloverIcon);
		
		c.add(btn);
		c.setSize(250,150);
		setVisible(true);
	}

	public static void main(String[] args) {
		new ImageIcon1();
	}

}
