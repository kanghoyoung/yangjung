package p0520;

import java.awt.Container;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JFrame;
import javax.swing.JLabel;

public class MouseEx1 extends JFrame {
	
	JLabel la = new JLabel("Hello");

	public MouseEx1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Mouse 예제");
		Container c = getContentPane();
		
		// 익명 클래스
		c.addMouseListener(new MouseListener() {

			@Override
			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				int x = e.getX();
				int y = e.getY();
				la.setLocation(x,y);
				
			}

			@Override
			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		c.setLayout(null);
		la.setSize(50,20);
		la.setLocation(30,30); // 레이블 위치
		c.add(la);
		setSize(200,200);
		setVisible(true);
	}
	
	// inner class(내부 클래스)
	/*
	class MyMouseListener implements MouseListener {

		@Override
		public void mouseClicked(MouseEvent e) {
			
		}

		@Override
		public void mouseEntered(MouseEvent e) {
			
		}

		@Override
		public void mouseExited(MouseEvent e) {
			
		}

		@Override
		public void mousePressed(MouseEvent e) {
			// x좌표 y좌표 가져오기
			int x = e.getX();
			int y = e.getY();
			la.setLocation(x, y);
		}

		@Override
		public void mouseReleased(MouseEvent e) {
			
		}
		
		
	}
	*/

	public static void main(String[] args) {
		MouseEx1 mouse = new MouseEx1();
	}

}
