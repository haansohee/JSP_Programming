// EL에서 정적 메서드 호출하기 예제 (1) : 자바빈 클래스 생성
package week07_ExpressionLanguage;

import java.text.DecimalFormat;

public class FormatUtil {
	// 큰 숫자가 들어오면 그에 맞는 패턴 출력.
	public static String number(long number, String pattern) { // 객체 생성하지 않아도 사용 가능한 static
		DecimalFormat format = new DecimalFormat(pattern);
		return format.format(number);
	}
	
}
