package p0519;

import java.awt.FlowLayout;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

public class Swing2 extends JFrame {

	public Swing2() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("텍스트필드 만들기 예제");
		this.setLayout(new FlowLayout());
		
		JLabel label1 = new JLabel("이름");
		JTextField txt1 = new JTextField(20);
		this.add(label1);
		this.add(new JScrollPane(txt1));
		
		
		JLabel label2 = new JLabel("학과");
		JTextField txt2 = new JTextField("컴퓨터공학과",20);
		this.add(label2);
		this.add(new JScrollPane(txt2));
		
		
		JLabel label3 = new JLabel("주소");
		JTextField txt3 = new JTextField("서울시...",20);
		this.add(label3);
		this.add(new JScrollPane(txt3));
		
		
		setSize(300,150);
		setVisible(true);
		
	}

	public static void main(String[] args) {
		new Swing2();
	}

}
