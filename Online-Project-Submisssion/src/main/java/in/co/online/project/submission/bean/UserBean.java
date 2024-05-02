package in.co.online.project.submission.bean;

public class UserBean extends BaseBean{
	
	
	private long team_id;
	
	private long facultyId;
	private String fistName;
	private String lastName;
	private String phoneNo;
	private String email;
	private String username;
	private String password;
	private long roleId;
	public long getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(long facultyId) {
		this.facultyId = facultyId;
	}
	public long getTeam_id() {
		return team_id;
	}
	public void setTeam_id(long team_id) {
		this.team_id = team_id;
	}
	public String getFistName() {
		return fistName;
	}
	public void setFistName(String fistName) {
		this.fistName = fistName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getRoleId() {
		return roleId;
	}
	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}
	@Override
	public String toString() {
		return "UserBean [fistName=" + fistName + ", lastName=" + lastName + ", phoneNo=" + phoneNo + ", email=" + email
				+ ", username=" + username + ", password=" + password + ", roleId=" + roleId + ", getId()=" + getId()
				+ ", getCreatedby()=" + getCreatedby() + ", getModifiedBy()=" + getModifiedBy()
				+ ", getCreateDateTime()=" + getCreateDateTime() + ", getModifiedDateTime()=" + getModifiedDateTime()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	

	
}
