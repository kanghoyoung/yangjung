package p0518;

import java.awt.*;

import javax.swing.*;

public class Combo1 extends JFrame {

	public Combo1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Combo 예제");
		this.setLayout(new FlowLayout());
		String[] pet = {"고양이", "강아지", "토끼", "코알라", "송아지"};
		JList list = new JList(pet);
		this.add(list);
		
		JComboBox combo = new JComboBox(pet);
		this.add(combo);
		
		setSize(200,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Combo1();
	}

}
