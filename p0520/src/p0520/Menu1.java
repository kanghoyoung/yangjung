package p0520;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class Menu1 extends JFrame {

	public Menu1() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("메뉴");
		this.setLayout(new FlowLayout());
		JLabel lbl = new JLabel("이 글자가 바뀝니다.");
		this.add(lbl);
		Container c = getContentPane();
		JMenuBar menuBar = new JMenuBar();
		JMenu fileMenu = new JMenu("파일");
		JMenu editMenu = new JMenu("편집");
		JMenu backGround = new JMenu("배경");
		JMenu helpMenu = new JMenu("도움말");
		
		JMenuItem newItem = new JMenuItem("새 문서");
		JMenuItem openItem = new JMenuItem("열기");
		JMenuItem closeItem = new JMenuItem("닫기");
		JMenuItem redItem = new JMenuItem("빨강");
		JMenuItem greenItem = new JMenuItem("초록");
		JMenuItem yellowItem = new JMenuItem("노랑");
		
		setJMenuBar(menuBar);
		menuBar.add(fileMenu);
		menuBar.add(editMenu);
		menuBar.add(backGround);
		menuBar.add(helpMenu);
		
		// 파일
		fileMenu.add(newItem);
		fileMenu.addSeparator(); // 분리선
		fileMenu.add(openItem);
		fileMenu.addSeparator(); // 분리선
		fileMenu.add(closeItem);
		
		// 배경
		backGround.add(redItem);
		backGround.add(greenItem);
		backGround.add(yellowItem);
		
		newItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				lbl.setText("[새 문서]를 선택했습니다.");
			}
			
		});
		
		openItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				lbl.setText("[열기]를 선택했습니다.");
			}
			
		});
		
		closeItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				lbl.setText("[닫기]를 선택했습니다.");
			}
			
		});
		
		redItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				c.setBackground(Color.RED);
				
			}
			
		});
		greenItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
				c.setBackground(Color.GREEN);
				
			}
			
		});
		
		yellowItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
				c.setBackground(Color.YELLOW);
				
			}
			
		});
		setSize(300,200);
		setVisible(true);
	}

	public static void main(String[] args) {
		new Menu1();
	}

}
