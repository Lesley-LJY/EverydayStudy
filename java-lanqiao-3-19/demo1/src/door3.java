import java.util.*;
import java.math.BigDecimal;
public class door3 {
	/**
	 * 入门训练-3-圆的面积
	 */
	public static void main(String[] args) {
		final double PI = 3.14159265358979323;
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		double s;
		s = PI*n*n;
		BigDecimal bd = new BigDecimal(s);
		BigDecimal result = bd.setScale(7,BigDecimal.ROUND_HALF_UP);
		System.out.print(result);
		
	}	
}


