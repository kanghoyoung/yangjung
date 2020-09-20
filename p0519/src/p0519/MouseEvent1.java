package p0519;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class MouseEvent1 extends JFrame {

	public MouseEvent1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("마우스 이벤트");
		this.setLayout(new FlowLayout());
		JTextField txtX = new JTextField(10);
		JTextField txtY = new JTextField(10);
		this.add(txtX);
		this.add(txtY);
		this.addMouseListener(new MouseListener() {

			@Override
			public void mouseClicked(MouseEvent e) {
				txtX.setText(Integer.toString(e.getX()));
				txtY.setText(Integer.toString(e.getY()));
			}

			@Override
			public void mouseEntered(MouseEvent arg0) {
				
			}

			@Override
			public void mouseExited(MouseEvent arg0) {
				
			}

			@Override
			public void mousePressed(MouseEvent arg0) {
				
			}

			@Override
			public void mouseReleased(MouseEvent arg0) {
				
			}
			
		});
		setSize(500,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		new MouseEvent1();
	}

}
