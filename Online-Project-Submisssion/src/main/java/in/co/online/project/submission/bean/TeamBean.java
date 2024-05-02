package in.co.online.project.submission.bean;

public class TeamBean extends BaseBean {
	
	private String teamName;
	private  String teamGuide;
	private long facultyId;
	 private String className;
	
	
	public String getTeamName() {
		return teamName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamGuide() {
		return teamGuide;
	}
	public void setTeamGuide(String teamGuide) {
		this.teamGuide = teamGuide;
	}
	public long getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(long facultyId) {
		this.facultyId = facultyId;
	}
	

	
	

}
