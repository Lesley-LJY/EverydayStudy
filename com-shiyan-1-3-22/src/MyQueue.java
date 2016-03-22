import java.util.*;

//���������˵��Java�����д����

public class MyQueue<T> {
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
		MyQueue<String> mq = new MyQueue<String>();
		mq.addLast("hello world");
		mq.addLast("hello world2");
		System.out.println(mq.getFirst());
		mq.remove();
		System.out.println(mq.getFirst());
	}
}