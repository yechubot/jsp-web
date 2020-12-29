package steakhouse;

public class ReviewBean {
	private int num;
	private String title;
	private String nickname;
	private String visitDate;
	private String details;
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}
}
