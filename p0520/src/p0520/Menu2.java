package p0520;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;



public class Menu2 extends JFrame {
	
	JLabel la = new JLabel();
	
	Menu2() {
		super("메뉴");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.add(la, BorderLayout.CENTER);
		c.setLayout(new FlowLayout());
		JMenuBar menuBar = new JMenuBar(); // JMenuBar 컴포넌트 생성
		
		JMenu screenMenu = new JMenu("Screen");
		JMenu editMenu = new JMenu("Edit");
		JMenu sourceMenu = new JMenu("Source");
		JMenu projectMenu = new JMenu("Project");
		JMenu runMenu = new JMenu("Run");
		
		JMenuItem loadItem = new JMenuItem("Load");
		JMenuItem hideItem = new JMenuItem("Hide");
		JMenuItem reshowItem = new JMenuItem("ReShow");
		JMenuItem exitItem = new JMenuItem("Exit");
		
		setJMenuBar(menuBar); // 메뉴바를 프레임에 붙임 (메뉴가 보인다)
		menuBar.add(screenMenu);
		menuBar.add(editMenu);
		menuBar.add(sourceMenu);
		menuBar.add(projectMenu);
		menuBar.add(runMenu);
		
		
		loadItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				if(la.getIcon()!=null) return;
				la.setIcon(new ImageIcon("images/apple.jpg"));
				
			}
			
		});
		hideItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
				la.setVisible(false);
				
			}
			
		});
		reshowItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
				la.setVisible(true);
				
			}
			
		});
		screenMenu.add(loadItem);
		screenMenu.add(hideItem);
		screenMenu.add(reshowItem);
		screenMenu.addSeparator(); // 구분선
		screenMenu.add(exitItem);
		
		setSize(300,300);
		setVisible(true);
	}
	
	
	
	public static void main(String[] args) {
		new Menu2();
	}

}
