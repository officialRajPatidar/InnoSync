package in.co.online.project.submission.bean;

import com.mysql.cj.jdbc.Blob;

public class ProjectBean extends BaseBean{

	
	private String teamName;
	private String GuideName;
	private String ProjectName;
	private  String ProjectProblem;
	private byte[]  ProjectPpt;
	private String githupUrl;
	private Long student_id;
	
	public Long getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Long student_id) {
		this.student_id = student_id;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getGuideName() {
		return GuideName;
	}
	public void setGuideName(String guideName) {
		GuideName = guideName;
	}
	public String getProjectName() {
		return ProjectName;
	}
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}
	public String getProjectProblem() {
		return ProjectProblem;
	}
	public void setProjectProblem(String projectProblem) {
		ProjectProblem = projectProblem;
	}
	
	public byte[] getProjectPpt() {
		return ProjectPpt;
	}
	public void setProjectPpt(byte[] projectPpt) {
		ProjectPpt = projectPpt;
	}
	public String getGithupUrl() {
		return githupUrl;
	}
	public void setGithupUrl(String githupUrl) {
		this.githupUrl = githupUrl;
	}
}
