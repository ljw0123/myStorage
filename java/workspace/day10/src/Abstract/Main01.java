package Abstract;

public class Main01 {

	public static void main(String[] args) {
		/*
		 * Army, Navy, AirForce객체 만들어서
		 * 각각의 move(), attack() 실행
		 */
		Army army = new Army("육군");
		Navy navy = new Navy("해군");
		AirForce af = new AirForce("공군");
		
		army.move();
		army.move();
		army.attck();
		
		navy.attck();
		navy.move();
		navy.move();
		
		af.attck();
		af.move();
		
		
	}

}












