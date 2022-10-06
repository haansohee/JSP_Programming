package week06_JavaBeans;

// Book 클래스를 이용한 데이터 저장 및 조회 프로그램 
public class Book {
	private String code;  // 코드
	private String title;  // 제목
	private String writer;  // 저자
	private String pubDate;  //출판일자
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}	
}
