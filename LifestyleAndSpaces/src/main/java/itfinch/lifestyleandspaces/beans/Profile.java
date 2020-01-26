package itfinch.lifestyleandspaces.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="profile")
public class Profile {

	@Id
	@GeneratedValue
	@Column(name="usr_id")
	private int userId;
	
	@Column(name="usr_type")
	private String userType;
	
	@Column(name="comp_name")
	private String compName;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="usr_email")
	private String userEmail;
	
	@Column(name="contact_one")
	private String contactOne;
	
	@Column(name="contact_two")
	private String contactTwo;
	
	@Column(name="usr_address")
	private String userAddress;
	
	@Column(name="pincode")
	private String pincode;
	
	@Column(name="country")
	private String country;
	
	@Column(name="state")
	private String state;
	
	@Column(name="city")
	private String city;
	
	@Column(name="signup_date")
	private Date signupDate = new Date();
	
	@Column(name="comp_web_name")
	private String compWebName;

	public Profile()
	{
		
	}
	
	public Profile(String userType, String firstName, String userEmail, String contactOne) {
		super();
		this.userType = userType;
		this.firstName = firstName;
		this.userEmail = userEmail;
		this.contactOne = contactOne;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getContactOne() {
		return contactOne;
	}

	public void setContactOne(String contactOne) {
		this.contactOne = contactOne;
	}

	public String getContactTwo() {
		return contactTwo;
	}

	public void setContactTwo(String contactTwo) {
		this.contactTwo = contactTwo;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Date getSignupDate() {
		return signupDate;
	}

	public void setSignupDate(Date signupDate) {
		this.signupDate = signupDate;
	}

	public String getCompWebName() {
		return compWebName;
	}

	public void setCompWebName(String compWebName) {
		this.compWebName = compWebName;
	}
	
		
}
