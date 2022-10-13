// streamAPI 사용하기 예제. map() 메서드 활용. 회원 목록을 갖는 member라는 리스트에서 회원의 나이만 리스트로 추출할 경우
package week07_ExpressionLanguage;

public class Member {
	private String name;
	private int age;
	
	//생성자
	public Member(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	// 게터 세터
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

}
