package p0414;

import java.util.Scanner;

public class If2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("실적을 입력하시오(단위: 만원): ");
		// 실적 목표 1000
		int amt = sc.nextInt(); // 성과급
		int sil = amt - 1000;
		if (sil > 0) {
			System.out.printf("실적 달성\n");
			System.out.printf("보너스: %d\n", (int) (sil * 0.1));
			// System.out.printf("보너스: %f\n", sil*0.1);
			// System.out.printf("보너스: %d\n", sil/10);
		} else if(sil==0 || sil<0) {
			System.out.printf("실적 미달\n");
		}

		sc.close();
	}

}
