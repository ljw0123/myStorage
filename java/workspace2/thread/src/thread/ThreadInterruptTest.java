package thread;

public class ThreadInterruptTest extends Thread {
	public void run() {
		try
        {
            for (int i = 0 ; i < 10 ; i++)
            {
                Thread.sleep(1000);
                System.out.println(Thread.currentThread().getName() + " " + i + "��° ����");
            }
        }catch(InterruptedException e){    // ���ͷ�Ʈ �ɸ��� 
        	e.printStackTrace();
            System.out.println("������ ���� ����");
            //������ �Լ� ������ return ���� ���ؼ� ���� �� �Ҹ��Ű�� ����� ���� �̻���
            return;	 
        }
	}
	
}
