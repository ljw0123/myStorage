package thread;

public class Main02 {

	public static void main(String[] args) {
		// Runnable �������̽� ��ü����
//		RunableTest ru1 = new RunableTest();
		// Runnable ��ü�� �Ű������� �Ͽ� ������ ��ü ����
//		Thread th1 = new Thread(ru1);
		
		// Runnable �������̽� ��ü������ ��ü�� �Ű������� �Ͽ� ������ ��ü �ѹ��� ����
		Thread th1 = new Thread(new RunableTest());
		Thread th2 = new Thread(new RunableTest());
		Thread th3 = new Thread(new RunableTest());
		
		//1. ���ÿ� �Ȱ��� ���ڰ� ������(start
//		th1.start();
//		th2.start();
//		th3.start();
		
		// 2. �����ư��鼭 ����(run)
		th1.run();
		th2.run();
//		th3.run();
	}

}

