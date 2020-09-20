package p0520;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

import javax.swing.*;

public class KeyEx extends JFrame {
	JPanel cont = new JPanel();
	JLabel la = new JLabel("Hello");
	KeyEx() {
		super("상,하,좌,우 텍스트 움직이기"); // super = setTitle
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//setTitle("상,하,좌,우 텍스트 움직이기");
		setContentPane(cont);
		cont.setLayout(null);
		cont.addKeyListener(new KeyListener() {

			@Override
			public void keyPressed(KeyEvent e) {
				// TODO Auto-generated method stub
				int keyCode = e.getKeyCode(); // 키보드에서 입력한 키값
				switch(keyCode) {
				case KeyEvent.VK_UP:
					la.setLocation(la.getX(), la.getY()-1);
					break;
				case KeyEvent.VK_DOWN:
					la.setLocation(la.getX(), la.getY()+10);
					break;
				case KeyEvent.VK_LEFT:
					la.setLocation(la.getX()-10, la.getY());
					break;
				case KeyEvent.VK_RIGHT:
					la.setLocation(la.getX()+10, la.getY());
					break;
				}
			}

			@Override
			public void keyReleased(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void keyTyped(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
			
		});
		
		la.setLocation(30, 30); // 레이블 위치 지정
		la.setSize(100,20);
		cont.add(la);
		
		setSize(200,200);
		setVisible(true);
		cont.requestFocus(); // 포커스 지정
		
	}
	
	public static void main(String[] args) {
		new KeyEx();
	}

}
