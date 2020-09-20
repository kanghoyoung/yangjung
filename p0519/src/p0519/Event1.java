package p0519;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class Event1 extends JFrame {

	public Event1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("이벤트 실습");
		this.setLayout(new FlowLayout());
		JButton btn1 = new JButton("버튼1");
		btn1.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				btn1.setBackground(Color.RED);
				
				System.out.println("버튼1이 선택되었습니다.");
			}
			
		});
		this.add(btn1);
		
		setSize(200,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Event1();
	}

}
