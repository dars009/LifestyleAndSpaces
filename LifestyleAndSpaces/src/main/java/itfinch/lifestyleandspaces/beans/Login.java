package itfinch.lifestyleandspaces.beans;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="login")
public class Login {
	
	private int id;
	private String usr_email;
	private String usr_password;
	private String mob_no;
	private String usr_type;
	
	private Profile profile;
	
	
	public Login() {
		// default
	}

	@Id
	@GeneratedValue
	@Column(name="id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsr_email() {
		return usr_email;
	}

	public void setUsr_email(String usr_email) {
		this.usr_email = usr_email;
	}
	
	 public String getUsr_password() {
		return usr_password;
	}

	public void setUsr_password(String usr_password) {
		this.usr_password = usr_password;
	}

	public String getMob_no() {
		return mob_no;
	}

	public void setMob_no(String mob_no) {
		this.mob_no = mob_no;
	}

	public String getUsr_type() {
		return usr_type;
	}

	public void setUsr_type(String usr_type) {
		this.usr_type = usr_type;
	}

	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "usr_id_fk")
	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	
	
	
	
}
