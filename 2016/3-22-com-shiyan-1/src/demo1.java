import java.util.*;

//������нṹ��Ŀ�� �ó�ÿ���˿͵ĵȴ�ʱ��

public class demo1<T> {
    private LinkedList<T> list = new LinkedList<T>();
    public void addLast(T v) {
    	list.addLast(v); //��β����
    }
    public T getFirst() {
    	return list.getFirst(); //ȡ�ö���Ԫ��
    }
    public void remove() {
    	list.removeFirst(); //�Ƴ�����Ԫ��
    }


	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double lamba,u;	//������뿪�ٶ�
		int cus_No=0;	//ϵͳ�й˿���
		final int cyc_No = 100;	//ѭ������
		int cur_No;	//��ǰѭ������
		double rand_lamda,rand_u;
		
		System.out.print("������lamba,u �ĳ�ʼֵ��");
		
		lamba = sc.nextDouble();		
		u = sc.nextDouble();
		sc.close();	//�ر� Scanner ������
		
		demo1<String> mq = new demo1<String>();	//����һ������
		
		//�ж������lamba,u �ĳ�ʼֵ�Ƿ�Ϸ�
		if(lamba<=0 || lamba>=1){
			System.out.println("lamba��ֵ����0-1֮�䣬���Ϸ�");
			System.exit(0);;
		}
		if(u<=0 || u>=1){
			System.out.println("u��ֵ����0-1֮�䣬���Ϸ�");
			System.exit(0);;
		}
		
		System.out.println("\nģ���Ŷӹ��̿�ʼ��\n");
		
		//ģ����̿�ʼ
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
				
				System.out.print("��"+cur_No+"��ѭ��,");
				System.out.println("�ӳ�Ϊ"+cus_No);
				
			}else{
				System.out.println("\nģ���Ŷӹ����ѽ�����");
			}
		}
		
/*		//�����Ƿ��������α�����
		int x=1+(int)(Math.random()*50);
		System.out.println(x);
		int y=1+(int)(Math.random()*50);
		System.out.println(y);
*/

	}
	
	/*�������������������һ������������ĺ���,�Ҳ��������������һ�������ĸ�ָ���ֲ�,
	 * ���ӵĲ���Ϊ1/lamba����1/u*/
	
	private static double myexp(double beta) {	//��������Ϊbeta�ĸ�ָ���ֲ�
		
		double u;
		do{
		   u = myu(0,1);
		}while(u<=0||u>=1);
		return (-1*beta*Math.log(u));
	}
	
	private static double myu(double a, double b)  {	//����a��b֮��ľ��ȷֲ�
		double y;
		y = (double)Math.random()%100000;
		y =y/100000;
		return (a+(b-a)*y); 
	}
	

}





