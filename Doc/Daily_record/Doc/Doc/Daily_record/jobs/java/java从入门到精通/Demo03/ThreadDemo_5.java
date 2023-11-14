class TestThread implements Runnable{
	private int tickets = 20;
	public void run(){
		while (true) {
			synchronized(this){
				if(tickets > 0){
					try {
						Thread.sleep(100);
					} catch(Exception e){
						e.printStackTrace();
					}
					System.out.println(Thread.currentThread().getName()+"出售票"+tickets--);
				}
			}
		}
	}
}
public class ThreadDemo_5 {
	public static void main(String[] args) {
		TestThread tt = new TestThread();
		//启动了4个线程,实现了资源共享的目的
		new Thread(tt).start();
		new Thread(tt).start();
		new Thread(tt).start();
		new Thread(tt).start();
	}
	
}
