package s04.com.dao;

public class Person {
	// private 멤버 변수
	private int id = 20181004;
	private String name = "최성혁";
	
	// 인수 없는 생성자
	public Person() {
		
	}
	
	// Getter()/Setter() 메소드
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
