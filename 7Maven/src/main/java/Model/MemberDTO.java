package Model;

public class MemberDTO {
	
	//DTO(Data Transfer Object) : 데이터 전달 객체
	//테이블 형태 그대로 생성
	
	//필드
	private String id;
	private String pw;
	private String name;
	
	//메소드
	//생성자 메소드 : 객체를 초기화하기 위해
	public MemberDTO(String id, String pw, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
