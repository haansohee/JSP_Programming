package week06_JavaBeans;

// 사칙연산 계산기 만들기. - (1) 클래스 생성

public class Calculator {
	private int num1;
	private int num2;
	private String op;
	
	// 계산해 주는 메서드.
		public int cal() {
			int result = 0;
			switch(op) {
			case "+" :
				result = num1 + num2;
				break;
			case "-" :
				result = num1 - num2;
				break;
			case "*" :
				result = num1 * num2;
				break;
			case "/" :
				result = num1 / 2;
				break;
			}
			return result;
		}
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public String getOp() {
		return op;
	}
	public void setOp(String op) {
		this.op = op;
	}
}
