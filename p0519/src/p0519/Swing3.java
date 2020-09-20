package p0519;

import java.awt.FlowLayout;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class Swing3 extends JFrame {

	public Swing3() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("텍스트영역 만들기 예제");
		this.setLayout(new FlowLayout());
		
		JTextArea txt = new JTextArea(7,20);
		this.add(txt);
		this.add(new JScrollPane(txt));
		
		
		
		setSize(300,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		Swing3 s = new Swing3();
	}

}
