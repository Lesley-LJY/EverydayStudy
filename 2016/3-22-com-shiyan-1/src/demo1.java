import java.util.*;

//定义队列结构，目的 得出每个顾客的等待时间

public class demo1<T> {
    private LinkedList<T> list = new LinkedList<T>();
    public void addLast(T v) {
    	list.addLast(v); //队尾插入
    }
    public T getFirst() {
    	return list.getFirst(); //取得队首元素
    }
    public void remove() {
    	list.removeFirst(); //移除队首元素
    }


	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double lamba,u;	//到达和离开速度
		int cus_No=0;	//系统中顾客数
		final int cyc_No = 100;	//循环次数
		int cur_No;	//当前循环次数
		double rand_lamda,rand_u;
		
		System.out.print("请输入lamba,u 的初始值：");
		
		lamba = sc.nextDouble();		
		u = sc.nextDouble();
		sc.close();	//关闭 Scanner 输入流
		
		demo1<String> mq = new demo1<String>();	//定义一个队列
		
		//判断输入的lamba,u 的初始值是否合法
		if(lamba<=0 || lamba>=1){
			System.out.println("lamba的值不在0-1之间，不合法");
			System.exit(0);;
		}
		if(u<=0 || u>=1){
			System.out.println("u的值不在0-1之间，不合法");
			System.exit(0);;
		}
		
		System.out.println("\n模拟排队过程开始！\n");
		
		//模拟过程开始
		for(cur_No=0;cur_No<=cyc_No;cur_No++){
			
			if(cur_No<=cyc_No){
				rand_lamda = myexp(1/lamba);
				rand_u = myexp(1/u);
				
				if(rand_lamda<=rand_u){
					cus_No = cus_No+1; 
				}else{
					cus_No = cus_No-1;
				}
				
				if(cus_No<=0){
					cus_No = 0;
				}
				
				System.out.print("第"+cur_No+"次循环,");
				System.out.println("队长为"+cus_No);
				
			}else{
				System.out.println("\n模拟排队过程已结束！");
			}
		}
		
/*		//测试是否产生的是伪随机数
		int x=1+(int)(Math.random()*50);
		System.out.println(x);
		int y=1+(int)(Math.random()*50);
		System.out.println(y);
*/

	}
	
	/*下面的两个函数是用来一个产生随机数的函数,且产生的随机数服从一定参数的负指数分布,
	 * 服从的参数为1/lamba，和1/u*/
	
	private static double myexp(double beta) {	//产生参数为beta的负指数分布
		
		double u;
		do{
		   u = myu(0,1);
		}while(u<=0||u>=1);
		return (-1*beta*Math.log(u));
	}
	
	private static double myu(double a, double b)  {	//产生a到b之间的均匀分布
		double y;
		y = (double)Math.random()%100000;
		y =y/100000;
		return (a+(b-a)*y); 
	}
	

}





