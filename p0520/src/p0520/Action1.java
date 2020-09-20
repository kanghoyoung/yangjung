package p0520;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class Action1 extends JFrame {

	public Action1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("액션 이벤트 예제");
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		JButton btn = new JButton("Action");
		btn.addActionListener(new MyActionListener());
		
		c.add(btn);
		setSize(250,120);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Action1();
	}

}

class MyActionListener implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		JButton b = (JButton)e.getSource();
		// 영문 Action이면 액션으로 바꿈
		if(b.getText().equals("Action")) {
			b.setText("액션");
			b.setBackground(Color.GREEN);
		}else{ // 한글 액션이면 영문으로 바꿈
			b.setText("Action");
			b.setBackground(Color.RED);
		}
	}
	
}