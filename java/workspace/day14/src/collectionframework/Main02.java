package collectionframework;

import java.util.ArrayList;
import java.util.List;

public class Main02 {

	public static void main(String[] args) {
		// 객체를 생성시 제너릭스의 사용
		// -> 클래스 이름은 오름쪽에 <자료형>의 형식으로 표현한다.
		// 이때 자료형에는 클래스타입만 가능하다.
		// 기본 데이터형을 사용하고자 하는 경우에는
		// 해당 데이터형의 WrapperClass를 사용해야 한다. 
		List<Integer> nuberList = 
			new ArrayList<Integer>();
		
		// 데이터 추가
		nuberList.add(10);
		nuberList.add(20);
		nuberList.add(30);
		nuberList.add(40);
		nuberList.add(50);
		nuberList.add(60);
		nuberList.add(70);
		nuberList.add(80);
		nuberList.add(90);
		
		// 추가된 데이터의 수량
		int count = nuberList.size();
		System.out.println("데이터 크기 : " + count);
		
		// 5번째 요소의 값 얻기
		int value = nuberList.get(4);
		System.out.println("5번째 요소의 값 : " + value);
		
		// 5번째 요소 삭제
		nuberList.remove(4);
		
		// 하나를 삭제 후, 전체 크기 다시 조회 -> 8개
		count = nuberList.size();
		System.out.println("데이터 크기 : " + count);
		
		// 5번째 요소의 값 다시 얻기
		value = nuberList.get(4);
		System.out.println("5번째 요소의 값 : " + value);
		
		// 5번째 자리에 데이터 추가
		nuberList.add(4, 123);
		value = nuberList.get(4);
		System.out.println("5번째 요소의 값 : " + value);
		
		// 전체 삭제
		nuberList.clear();
		count = nuberList.size();
		System.out.println("데이터 크기 : " + count);
		
	}

}
















