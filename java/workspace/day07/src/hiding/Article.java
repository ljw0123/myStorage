package hiding;

// 하나의 게시물을 표현하기 위한 javabeans
public class Article {
	private int seq;			// 글번호
	private String subject;		// 글제목
	private String conent;		// 글내용
	private String writer;		// 작성자
	private int hit;			// 조회수
	private String regDate;		// 작성일시
	
	public Article(int seq, String subject, 
			String conent, String writer, 
			int hit, String regDate) {
		super();
		this.seq = seq;
		this.subject = subject;
		this.conent = conent;
		this.writer = writer;
		this.hit = hit;
		this.regDate = regDate;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getConent() {
		return conent;
	}

	public void setConent(String conent) {
		this.conent = conent;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "게시판 [seq=" + seq 
				+ ", subject=" + subject 
				+ ", conent=" + conent 
				+ ", writer=" + writer 
				+ ", hit="+ hit 
				+ ", regDate=" + regDate + "]";
	}
	
//	public String toString() {
//		return "글번호 : " + this.seq 
//			+ ", 글제목 : " + this.subject; 
//	}
	
	
	
}




















