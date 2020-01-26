package itfinch.lifestyleandspaces.beans;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usr_enquiry")
public class UserEnquiry {
	
	@Id
	@GeneratedValue
	@Column(name="usr_enq_id")
	private Integer enqId;
	
	@Column(name="enq_full_name")
	private String enqFullName;
	
	@Column(name="enq_email")
	private String enqEmail;
	
	@Column(name="enq_mob")
	private String enqMobileNumber;
	
	@Column(name="enq_msg")
	private String enqMessage;
	
	@Column(name="date")
	private String enqDate;
	
	@Column(name="time")
	private String enqTime;
	
	@Column(name="prop_id")
	private Integer enqPropId;
	
	@Column(name="update_date")
	private Date enqUpdateDate = new Date();

	public Integer getEnqId() {
		return enqId;
	}

	public void setEnqId(Integer enqId) {
		this.enqId = enqId;
	}

	public String getEnqFullName() {
		return enqFullName;
	}

	public void setEnqFullName(String enqFullName) {
		this.enqFullName = enqFullName;
	}

	public String getEnqEmail() {
		return enqEmail;
	}

	public void setEnqEmail(String enqEmail) {
		this.enqEmail = enqEmail;
	}

	public String getEnqMobileNumber() {
		return enqMobileNumber;
	}

	public void setEnqMobileNumber(String enqMobileNumber) {
		this.enqMobileNumber = enqMobileNumber;
	}

	public String getEnqMessage() {
		return enqMessage;
	}

	public void setEnqMessage(String enqMessage) {
		this.enqMessage = enqMessage;
	}

	public String getEnqDate() {
		return enqDate;
	}

	public void setEnqDate(String enqDate) {
		this.enqDate = enqDate;
	}

	public String getEnqTime() {
		return enqTime;
	}

	public void setEnqTime(String enqTime) {
		this.enqTime = enqTime;
	}

	public Integer getEnqPropId() {
		return enqPropId;
	}

	public void setEnqPropId(Integer enqPropId) {
		this.enqPropId = enqPropId;
	}

	public Date getEnqUpdateDate() {
		return enqUpdateDate;
	}

	public void setEnqUpdateDate(Date enqUpdateDate) {
		this.enqUpdateDate = enqUpdateDate;
	}

}
