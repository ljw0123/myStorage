package thread;

public class Main03 {

	public static void main(String[] args) {
		ThreadInterruptTest th = new ThreadInterruptTest();
        th.start();
        
        // 3�ʿ� ���ͷ�Ʈ
        try{
            Thread.sleep(3000);
        }catch(InterruptedException e){
        	e.printStackTrace();
        }
        th.interrupt();
	}

}
