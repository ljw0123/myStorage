package singleton;

public class Main01 {

	public static void main(String[] args) {
		Calc c1 = Calc.getInstance();
		c1.plus(10, 20);
		
		Calc c2 = Calc.getInstance();
		c2.minus(20, 10);
	}

}
















