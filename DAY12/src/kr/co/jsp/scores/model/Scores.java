package kr.co.jsp.scores.model;
/*
 CREATE TABLE scores(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    kor NUMBER DEFAULT 0,
    eng NUMBER DEFAULT 0,
    math NUMBER DEFAULT 0,
    total NUMBER(38, 0) DEFAULT 0,
    average NUMBER(5, 2)
);
 */
public class Scores {

	private int id;
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double average;
	
	public Scores() {}
	
	public Scores(int id, String name, int kor, int eng, int math, int total, double average) {
		super();
		this.id = id;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = total;
		this.average = average;
	}


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
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal() {
		this.total = this.kor + this.eng + this.math;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage() {
		this.average = this.total / 3.0;
	}
	
	
	
	
	
}




















