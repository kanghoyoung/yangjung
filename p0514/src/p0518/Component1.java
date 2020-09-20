package p0518;

import java.awt.*;

import javax.swing.*;

public class Component1 extends JFrame {

	public Component1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Component 예제");
		Container c=this.getContentPane();
		c.setBackground(Color.YELLOW);
		c.setLayout(new FlowLayout());
		JButton btn1 = new JButton("버튼1");
		btn1.setBackground(Color.BLACK);
		btn1.setForeground(Color.MAGENTA); // 글자색(전경색) magenta:연분홍색
		
		JButton btn2 = new JButton("버튼2");
		btn2.setFont(new Font("맑은 고딕", Font.BOLD, 30)); // bold 진하게 
		btn2.setToolTipText("이 버튼은 크게 보여요~~~");
		
		JButton btn3 = new JButton("버튼3");
		btn3.setEnabled(false); // 비활성
		
		c.add(btn1);
		c.add(btn2);
		c.add(btn3);
		setSize(250,250);
		setVisible(true);
	}

	public static void main(String[] args) {
		Component1 com1 = new Component1();
	}

}
