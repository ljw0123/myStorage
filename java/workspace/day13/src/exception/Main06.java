package exception;

public class Main06 {

	public static void main(String[] args) {
		// NumberFormatException, 
		// ArrayIndexOutOfBoundsException
		// Exception
		
		// 사용자의 입력값을 가정
		String[] src = {"5", "2", "7"};
		
		// src의 내용들을 숫자로 변환해서 저장할 배열
		int[] arr = new int[3];
		
		try {
			for(int i=0; i<src.length; i++) {
				arr[i] = Integer.parseInt(src[i]);
				System.out.println(arr[i]);
			}
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("데이터가 너무 많습니다.");
			e.printStackTrace();
		} catch (NumberFormatException e) {
			System.out.println("입력값에 오류가 있습니다. ");
			e.printStackTrace();
		} catch (Exception e) {
			/*
			 * 예외 종류를 의미하는 모든 클래스는 
			 * java.lang.Exception 클래스를 상속받으므로,
			 * 이 블록은 모든 종류의 예외에 대처할 수 있다.
			 */
			System.out.println("알 수 없는 에러 발생");
			e.printStackTrace();
		} finally {
			// 이 블록은 예외의 발생 여부에 상관없이
			// 무조건 실행
			System.out.println("데이터 변환 종료");
		}
		
		System.out.println("---프로그램 종료---");
		
	}

}







