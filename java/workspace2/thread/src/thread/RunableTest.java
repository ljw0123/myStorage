package thread;

public class RunableTest implements Runnable{

	@Override
	public void run() {
		try {
			for(int i=0; i<10; i++) {
				Thread.sleep(0000);
				//Thread.currentThread().getName() : thread ��
				System.out.println(Thread.currentThread().getName() + " Runnable ȣ�� " + i);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
