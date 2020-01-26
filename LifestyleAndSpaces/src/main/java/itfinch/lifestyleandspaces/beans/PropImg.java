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
@Table(name="prop_img")//Mapped to prop_img table
public class PropImg {

	private Integer img_id;
	private String img_name;
	
	
	private PropertiesDetails propertiesDetails; 
	
	@OneToOne(targetEntity=PropertiesDetails.class,cascade=CascadeType.ALL)
	@JoinColumn(name="prop_id_fk",referencedColumnName="prop_id")
	public PropertiesDetails getPropertiesDetails() {
		return propertiesDetails;
	}

	public void setPropertiesDetails(PropertiesDetails propertiesDetails) {
		this.propertiesDetails = propertiesDetails;
	}
	
	
	public PropImg() {
		//default constructor
	}

	//Getters & Setters
	@Id
	@GeneratedValue
	@Column(name="img_id")
	public Integer getImg_id() {
		return img_id;
	}

	public void setImg_id(Integer img_id) {
		this.img_id = img_id;
	}

	public  String getImg_name() {
		return img_name;
	}

	public void setImg_name( String img_name) {
		this.img_name = img_name;
	}
	
	

	
	
}
