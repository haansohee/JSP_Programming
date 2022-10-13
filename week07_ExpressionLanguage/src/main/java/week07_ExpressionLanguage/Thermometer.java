// EL에서 객체의 메서드 호출 예제 (1) : EL에서 메서드 호출을 위한 자바빈 클래스 생성 
package week07_ExpressionLanguage;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	private Map<String, Double> locationMap = new HashMap<String, Double>();  // key는 String , Value는 double형으로 지정해준다. Map 객체 생성.
	
	// 지역별로 온도를 저장해 주는 세터 생성. 
	public void setCelsius(String location, Double value) {  // 섭씨온도
		locationMap.put(location, value);		// location 값과 Value 값을 받아서 맵에다가 넣어 주면 되겠죠.
	}
	
	public Double getCelsius(String location) {
		return locationMap.get(location);  // 읽어와서 return 해 주기.  (읽을 때는 key값만 주면 됨.)
	}
	
	// 섭씨 온도 -> 화씨 온도로 변환하는 메서드
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);  // 섭씨 온도 가져오기.
		if(celsius == null) {
			return null;
		}
		
		return celsius.doubleValue() * 1.8 + 32.0;
		
	}
	
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
	
	

}
