import java.util.*;

//这个程序是说明Java中如何写队列

public class MyQueue<T> {
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
		MyQueue<String> mq = new MyQueue<String>();
		mq.addLast("hello world");
		mq.addLast("hello world2");
		System.out.println(mq.getFirst());
		mq.remove();
		System.out.println(mq.getFirst());
	}
}