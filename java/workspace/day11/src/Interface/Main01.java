package Interface;

public class Main01 {

	public static void main(String[] args) {
		Character c = new Character("주인공");
		c.walk();
		c.walk();
		c.run();
		c.attack();
		c.attack();
		c.shield();
		c.pickup();
		c.jump();
		System.out.println("-------------");
		
		Monster m = new Monster("악당");
		m.walk();
		m.jump();
		m.run();
		m.shield();
		m.attack();
	}

}







