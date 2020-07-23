package kr.co.jsp.score;

public class ScoreBean {

	private int eng;
	private int kor;
	private int math;
	private int total;
	private double avg;

	public ScoreBean(int eng, int kor, int math, int total, double avg) {
		super();
		this.eng = eng;
		this.kor = kor;
		this.math = math;
		this.total = total;
		this.avg = avg;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
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

	public void setTotal(int total) {
		this.total = total;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

}
