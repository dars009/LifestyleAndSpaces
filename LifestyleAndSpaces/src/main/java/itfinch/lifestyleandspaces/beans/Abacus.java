package itfinch.lifestyleandspaces.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="abacus")
public class Abacus {
	
	@Id
	@GeneratedValue
	@Column 
	private Integer abacusId;
	@Column 
	private String carrierCode;
	@Column 
	private String groupPnrIndicator;
	@Column 
	private String domesticIndicator ; 
	@Column 
	private String pccNumber;
	@Column 
	private String iataNumber;
	@Column 
	private String agencyName;
	@Column 
	private String agencyCity ; 
	@Column 
	private String agencyCountryCode;
	@Column 
	private String cityPairFrom;
	@Column 
	private String cityPairTo;
	@Column 
	private String lowFlightNum;
	@Column 
	private String highFlightNum;  
	@Column 
	private String sharedCodeCarrier;
	@Column 
	private String bookingDate;
	@Column 
	private String flightDate;
	@Column 
	private String flightNum;
	@Column 
	private String paxName ;
	@Column 
	private String classOfServ; 
	@Column 
	private String statusCode ;
	@Column 
	private String ncIndicator ;
	@Column 
	private String accTypeIndicator; 
	@Column 
	private String pnrRecLocator  ;
	@Column 
	private String paxCount ;
	@Column 
	private String actIndicator;  
	@Column 
	private String filler ; 
	@Column 
	private String filler1;
	
	


	public Integer getAbacusId() {
		return abacusId;
	}


	public void setAbacusId(Integer abacusId) {
		this.abacusId = abacusId;
	}


	public String getCarrierCode() {
		return carrierCode;
	}


	public void setCarrierCode(String carrierCode) {
		this.carrierCode = carrierCode;
	}


	public String getGroupPnrIndicator() {
		return groupPnrIndicator;
	}


	public void setGroupPnrIndicator(String groupPnrIndicator) {
		this.groupPnrIndicator = groupPnrIndicator;
	}


	public String getDomesticIndicator() {
		return domesticIndicator;
	}


	public void setDomesticIndicator(String domesticIndicator) {
		this.domesticIndicator = domesticIndicator;
	}


	public String getPccNumber() {
		return pccNumber;
	}


	public void setPccNumber(String pccNumber) {
		this.pccNumber = pccNumber;
	}


	public String getIataNumber() {
		return iataNumber;
	}


	public void setIataNumber(String iataNumber) {
		this.iataNumber = iataNumber;
	}


	public String getAgencyName() {
		return agencyName;
	}


	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}


	public String getAgencyCity() {
		return agencyCity;
	}


	public void setAgencyCity(String agencyCity) {
		this.agencyCity = agencyCity;
	}


	public String getAgencyCountryCode() {
		return agencyCountryCode;
	}


	public void setAgencyCountryCode(String agencyCountryCode) {
		this.agencyCountryCode = agencyCountryCode;
	}


	public String getCityPairFrom() {
		return cityPairFrom;
	}


	public void setCityPairFrom(String cityPairFrom) {
		this.cityPairFrom = cityPairFrom;
	}


	public String getCityPairTo() {
		return cityPairTo;
	}


	public void setCityPairTo(String cityPairTo) {
		this.cityPairTo = cityPairTo;
	}


	public String getLowFlightNum() {
		return lowFlightNum;
	}


	public void setLowFlightNum(String lowFlightNum) {
		this.lowFlightNum = lowFlightNum;
	}


	public String getHighFlightNum() {
		return highFlightNum;
	}


	public void setHighFlightNum(String highFlightNum) {
		this.highFlightNum = highFlightNum;
	}


	public String getSharedCodeCarrier() {
		return sharedCodeCarrier;
	}


	public void setSharedCodeCarrier(String sharedCodeCarrier) {
		this.sharedCodeCarrier = sharedCodeCarrier;
	}


	public String getBookingDate() {
		return bookingDate;
	}


	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}


	public String getFlightDate() {
		return flightDate;
	}


	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}


	public String getFlightNum() {
		return flightNum;
	}


	public void setFlightNum(String flightNum) {
		this.flightNum = flightNum;
	}


	public String getPaxName() {
		return paxName;
	}


	public void setPaxName(String paxName) {
		this.paxName = paxName;
	}


	public String getClassOfServ() {
		return classOfServ;
	}


	public void setClassOfServ(String classOfServ) {
		this.classOfServ = classOfServ;
	}


	public String getStatusCode() {
		return statusCode;
	}


	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}


	public String getNcIndicator() {
		return ncIndicator;
	}


	public void setNcIndicator(String ncIndicator) {
		this.ncIndicator = ncIndicator;
	}


	public String getAccTypeIndicator() {
		return accTypeIndicator;
	}


	public void setAccTypeIndicator(String accTypeIndicator) {
		this.accTypeIndicator = accTypeIndicator;
	}


	public String getPnrRecLocator() {
		return pnrRecLocator;
	}


	public void setPnrRecLocator(String pnrRecLocator) {
		this.pnrRecLocator = pnrRecLocator;
	}


	public String getPaxCount() {
		return paxCount;
	}


	public void setPaxCount(String paxCount) {
		this.paxCount = paxCount;
	}


	public String getActIndicator() {
		return actIndicator;
	}


	public void setActIndicator(String actIndicator) {
		this.actIndicator = actIndicator;
	}


	public String getFiller() {
		return filler;
	}


	public void setFiller(String filler) {
		this.filler = filler;
	}


	public String getFiller1() {
		return filler1;
	}


	public void setFiller1(String filler1) {
		this.filler1 = filler1;
	}
	
	
	

}
