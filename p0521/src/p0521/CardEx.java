package p0521;

import java.awt.CardLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class CardEx extends JFrame {

	Cards cards; // 메서드 만들기 위해
	
	CardEx() {
		super("카드 예제");
		JPanel panel;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		panel = new JPanel(new GridLayout());
		JButton b1 = new JButton("처음");
		JButton b2 = new JButton("이전");
		JButton b3 = new JButton("이후");
		JButton b4 = new JButton("마지막");
		JButton b5 = new JButton("종료");
		
		// 패널에 부착
		panel.add(b1);
		panel.add(b2);
		panel.add(b3);
		panel.add(b4);
		panel.add(b5);
		
		b1.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				cards.layout.first(cards);
			}
			
		});
		
		b2.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				cards.layout.previous(cards);
			}
			
		});
		
		b3.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				cards.layout.next(cards);
			}
			
		});
		
		b4.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				cards.layout.last(cards);
			}
			
		});
		
		b5.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
			
		});
		
		add(panel, "North"); // 위쪽에 배치
		cards = new Cards();
		add(cards, "Center");
		
		setSize(500,500);
		setVisible(true);
		
	} // 생성자 end
	
	// 내부 메서드
	private class Cards extends JPanel {
		
		CardLayout layout;
		
		// 생성자
		public Cards() {
			layout = new CardLayout();
			setLayout(layout);
			for(int i=1; i<=30; i++) {
				add(new JButton ("현재 카드 번호:"+i), "Center");
			}
		} // 생성자 end
		
	} // cards class
	
	public static void main(String[] args) {
		new CardEx();
	} // 메인메서드

} // CardEx class
