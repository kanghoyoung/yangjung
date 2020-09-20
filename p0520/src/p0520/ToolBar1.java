package p0520;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class ToolBar1 extends JFrame {

	public ToolBar1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("toolbar 예제");
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		JToolBar toolbar = new JToolBar();
		JButton newItem = new JButton("새 문서");
		JButton openItem = new JButton("열기");
		JButton closeItem = new JButton(new ImageIcon("images/bear.png"));
		add(toolbar,BorderLayout.NORTH);
		toolbar.add(newItem);
		toolbar.add(openItem);
		toolbar.add(closeItem);
		
		newItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, "조심하세요.");
			}
			
		});
		
		setSize(300,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		new ToolBar1();
	}

}
