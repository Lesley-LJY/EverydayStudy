import java.util.*; 

public class door4 {

	/**
	 * 入门训练-4-Fibonacci数列
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int m1=1,m2=1,m3=0;
		if(n==1 || n==2){
			System.out.println("1");
		}else{
			for(int i=3;i<=n;i++){
				m3 = (m2+m1)%10007;
				m1 = m2;
				m2 = m3;
			}
			System.out.println(m3);
		}		

	}

}
