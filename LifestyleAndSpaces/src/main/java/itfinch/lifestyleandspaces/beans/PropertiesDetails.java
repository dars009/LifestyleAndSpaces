package itfinch.lifestyleandspaces.beans;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="properties_details")
public class PropertiesDetails {

	private	Integer	prop_id; //pk
	private	Integer usr_id; //fk
	private	String	usr_type;
	private	String	usr_name;
	private	String	contact_no;
	private	String	usr_email;
	private	String	property_for;
	private	String	property_type;
	private	String	prop_country;
	private	String	prop_state;
	private	String	prop_city;
	private	Integer	pincode;
	private	String	prop_name;
	private	String	locality;
	private	String	landmark;
	private	String	bedroom;
	private	Integer	balconies;
	private	Integer	bathrooms;
	private	String	furnished_status;
	private	Integer	floor_no;
	private	Integer	total_floor;
	private	String	parking;
	private	Integer	carpet_area;
	private	String	carpet_area_unit;
	private	Integer	super_buit_up_area;
	private	String	super_buit_up_area_unit;
	private	Integer	washroom;
	private	String	personal_washroom;
	private	String	pantry;
	private	Integer	covered_area;
	private	String	covered_area_unit;
	private	Integer	floor_allowed;
	private	Integer	width_of_road_facing_the_plot;
	private	String	width_of_road_facing_the_plot_unit;
	private	String	plotting_done;
	private	Integer	plot_area;
	private	String	plot_area_unit;
	private	Integer	plot_length;
	private	String	plot_length_unit;
	private	Integer	plot_breath;
	private	String	plot_breath_unit;
	private	String	construction_type;
	private	String	age_of_construction;
	private	String	possession_status;
	private	String	available_from;
	private	Integer	expected_price;
	private	Integer	other_charges;
	private	Integer	monthly_rent;
	private	String	electricity_or_water;
	private	Integer	security_amt;
	private	Integer	maintenance_amt;
	private	String	maintenance_period;
	private	String	bachelors;
	private	String	vegeterians;
	private	String	pets;
	private	String	pooja_room = "No"; //set default value to checkbox
	private	String	study_room = "No";
	private	String	store_room = "No";
	private	String	servent_room = "No";
	private	String	facing;
	private	String	car_parking_cover = "No"; 
	private	String	car_parking_cover_no;
	private	String	car_parking_open = "No";
	private	String	car_parking_open_no;
	private	String	water_availabilitty;
	private	String	electricity_status;
	private	String	flooring;
	private	String	air_conditioning = "No";
	private	String	internet = "No";
	private	String	cable_tv = "No";
	private	String	oven = "No";
	private	String	swimming_pool = "No";
	private	String	children_play_area = "No";
	private	String	gas_connection = "No";
	private	String	geyser = "No";
	private	String	club_house = "No";
	private	String	terrace = "No";
	private	String	fridge = "No";
	private	String	curtains = "No";
	private	String	fan = "No";
	private	String	lights = "No";
	private	String	gymnasium = "No";
	private	String	lift = "No";
	private	String	power_back_up = "No";
	private	String	security = "No";
	private	String	garden = "No";
	private	String	reserved_parking = "No";
	private	String	bed = "No";
	private	String	cupboard = "No";
	private	String	washing_machine = "No";
	private	String	iron = "No";
	private	String	video_door_lock = "No";
	private	String	solar = "No";
	private	String	properties_details;
	private	String	landmark_details;
	private	Date	prop_upload_date;
	private	Date	prop_update_date  = new Date();//set default date & time 
	private	String	prop_uploaded_by;
	private	String	prop_updated_by;
	private	String	prop_active_status;
	
	
	public PropertiesDetails() {
		
	}

	//Getters & Setters
	@Id
	@GeneratedValue
	@Column(name="prop_id")
	public Integer getProp_id() {
		return prop_id;
	}

	public void setProp_id(Integer prop_id) {
		this.prop_id = prop_id;
	}

	public Integer getUsr_id() {
		return usr_id;
	}

	public void setUsr_id(Integer usr_id) {
		this.usr_id = usr_id;
	}

	public String getUsr_type() {
		return usr_type;
	}

	public void setUsr_type(String usr_type) {
		this.usr_type = usr_type;
	}

	public String getUsr_name() {
		return usr_name;
	}

	public void setUsr_name(String usr_name) {
		this.usr_name = usr_name;
	}

	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getUsr_email() {
		return usr_email;
	}

	public void setUsr_email(String usr_email) {
		this.usr_email = usr_email;
	}

	public String getProperty_for() {
		return property_for;
	}

	public void setProperty_for(String property_for) {
		this.property_for = property_for;
	}

	public String getProperty_type() {
		return property_type;
	}

	public void setProperty_type(String property_type) {
		this.property_type = property_type;
	}

	public String getProp_country() {
		return prop_country;
	}

	public void setProp_country(String prop_country) {
		this.prop_country = prop_country;
	}

	public String getProp_state() {
		return prop_state;
	}

	public void setProp_state(String prop_state) {
		this.prop_state = prop_state;
	}

	public String getProp_city() {
		return prop_city;
	}

	public void setProp_city(String prop_city) {
		this.prop_city = prop_city;
	}

	public Integer getPincode() {
		return pincode;
	}

	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}

	public String getProp_name() {
		return prop_name;
	}

	public void setProp_name(String prop_name) {
		this.prop_name = prop_name;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getBedroom() {
		return bedroom;
	}

	public void setBedroom(String bedroom) {
		this.bedroom = bedroom;
	}

	public Integer getBalconies() {
		return balconies;
	}

	public void setBalconies(Integer balconies) {
		this.balconies = balconies;
	}

	public Integer getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(Integer bathrooms) {
		this.bathrooms = bathrooms;
	}

	public String getFurnished_status() {
		return furnished_status;
	}

	public void setFurnished_status(String furnished_status) {
		this.furnished_status = furnished_status;
	}

	public Integer getFloor_no() {
		return floor_no;
	}

	public void setFloor_no(Integer floor_no) {
		this.floor_no = floor_no;
	}

	public Integer getTotal_floor() {
		return total_floor;
	}

	public void setTotal_floor(Integer total_floor) {
		this.total_floor = total_floor;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public Integer getCarpet_area() {
		return carpet_area;
	}

	public void setCarpet_area(Integer carpet_area) {
		this.carpet_area = carpet_area;
	}

	public String getCarpet_area_unit() {
		return carpet_area_unit;
	}

	public void setCarpet_area_unit(String carpet_area_unit) {
		this.carpet_area_unit = carpet_area_unit;
	}

	public Integer getSuper_buit_up_area() {
		return super_buit_up_area;
	}

	public void setSuper_buit_up_area(Integer super_buit_up_area) {
		this.super_buit_up_area = super_buit_up_area;
	}

	public String getSuper_buit_up_area_unit() {
		return super_buit_up_area_unit;
	}

	public void setSuper_buit_up_area_unit(String super_buit_up_area_unit) {
		this.super_buit_up_area_unit = super_buit_up_area_unit;
	}

	public Integer getWashroom() {
		return washroom;
	}

	public void setWashroom(Integer washroom) {
		this.washroom = washroom;
	}

	public String getPersonal_washroom() {
		return personal_washroom;
	}

	public void setPersonal_washroom(String personal_washroom) {
		this.personal_washroom = personal_washroom;
	}

	public String getPantry() {
		return pantry;
	}

	public void setPantry(String pantry) {
		this.pantry = pantry;
	}

	public Integer getCovered_area() {
		return covered_area;
	}

	public void setCovered_area(Integer covered_area) {
		this.covered_area = covered_area;
	}

	public String getCovered_area_unit() {
		return covered_area_unit;
	}

	public void setCovered_area_unit(String covered_area_unit) {
		this.covered_area_unit = covered_area_unit;
	}

	public Integer getFloor_allowed() {
		return floor_allowed;
	}

	public void setFloor_allowed(Integer floor_allowed) {
		this.floor_allowed = floor_allowed;
	}

	public Integer getWidth_of_road_facing_the_plot() {
		return width_of_road_facing_the_plot;
	}

	public void setWidth_of_road_facing_the_plot(Integer width_of_road_facing_the_plot) {
		this.width_of_road_facing_the_plot = width_of_road_facing_the_plot;
	}

	public String getWidth_of_road_facing_the_plot_unit() {
		return width_of_road_facing_the_plot_unit;
	}

	public void setWidth_of_road_facing_the_plot_unit(String width_of_road_facing_the_plot_unit) {
		this.width_of_road_facing_the_plot_unit = width_of_road_facing_the_plot_unit;
	}

	public String getPlotting_done() {
		return plotting_done;
	}

	public void setPlotting_done(String plotting_done) {
		this.plotting_done = plotting_done;
	}

	public Integer getPlot_area() {
		return plot_area;
	}

	public void setPlot_area(Integer plot_area) {
		this.plot_area = plot_area;
	}

	public String getPlot_area_unit() {
		return plot_area_unit;
	}

	public void setPlot_area_unit(String plot_area_unit) {
		this.plot_area_unit = plot_area_unit;
	}

	public Integer getPlot_length() {
		return plot_length;
	}

	public void setPlot_length(Integer plot_length) {
		this.plot_length = plot_length;
	}

	public String getPlot_length_unit() {
		return plot_length_unit;
	}

	public void setPlot_length_unit(String plot_length_unit) {
		this.plot_length_unit = plot_length_unit;
	}

	public Integer getPlot_breath() {
		return plot_breath;
	}

	public void setPlot_breath(Integer plot_breath) {
		this.plot_breath = plot_breath;
	}

	public String getPlot_breath_unit() {
		return plot_breath_unit;
	}

	public void setPlot_breath_unit(String plot_breath_unit) {
		this.plot_breath_unit = plot_breath_unit;
	}

	public String getConstruction_type() {
		return construction_type;
	}

	public void setConstruction_type(String construction_type) {
		this.construction_type = construction_type;
	}

	public String getAge_of_construction() {
		return age_of_construction;
	}

	public void setAge_of_construction(String age_of_construction) {
		this.age_of_construction = age_of_construction;
	}

	public String getPossession_status() {
		return possession_status;
	}

	public void setPossession_status(String possession_status) {
		this.possession_status = possession_status;
	}

	public String getAvailable_from() {
		return available_from;
	}

	public void setAvailable_from(String available_from) {
		this.available_from = available_from;
	}

	public Integer getExpected_price() {
		return expected_price;
	}

	public void setExpected_price(Integer expected_price) {
		this.expected_price = expected_price;
	}

	public Integer getOther_charges() {
		return other_charges;
	}

	public void setOther_charges(Integer other_charges) {
		this.other_charges = other_charges;
	}

	public Integer getMonthly_rent() {
		return monthly_rent;
	}

	public void setMonthly_rent(Integer monthly_rent) {
		this.monthly_rent = monthly_rent;
	}

	public String getElectricity_or_water() {
		return electricity_or_water;
	}

	public void setElectricity_or_water(String electricity_or_water) {
		this.electricity_or_water = electricity_or_water;
	}

	public Integer getSecurity_amt() {
		return security_amt;
	}

	public void setSecurity_amt(Integer security_amt) {
		this.security_amt = security_amt;
	}

	public Integer getMaintenance_amt() {
		return maintenance_amt;
	}

	public void setMaintenance_amt(Integer maintenance_amt) {
		this.maintenance_amt = maintenance_amt;
	}

	public String getMaintenance_period() {
		return maintenance_period;
	}

	public void setMaintenance_period(String maintenance_period) {
		this.maintenance_period = maintenance_period;
	}

	public String getBachelors() {
		return bachelors;
	}

	public void setBachelors(String bachelors) {
		this.bachelors = bachelors;
	}

	public String getVegeterians() {
		return vegeterians;
	}

	public void setVegeterians(String vegeterians) {
		this.vegeterians = vegeterians;
	}

	public String getPets() {
		return pets;
	}

	public void setPets(String pets) {
		this.pets = pets;
	}

	public String getPooja_room() {
		return pooja_room;
	}

	public void setPooja_room(String pooja_room) {
		this.pooja_room = pooja_room;
	}

	public String getStudy_room() {
		return study_room;
	}

	public void setStudy_room(String study_room) {
		this.study_room = study_room;
	}

	public String getStore_room() {
		return store_room;
	}

	public void setStore_room(String store_room) {
		this.store_room = store_room;
	}

	public String getServent_room() {
		return servent_room;
	}

	public void setServent_room(String servent_room) {
		this.servent_room = servent_room;
	}

	public String getFacing() {
		return facing;
	}

	public void setFacing(String facing) {
		this.facing = facing;
	}

	public String getCar_parking_cover() {
		return car_parking_cover;
	}

	public void setCar_parking_cover(String car_parking_cover) {
		this.car_parking_cover = car_parking_cover;
	}

	public String getCar_parking_cover_no() {
		return car_parking_cover_no;
	}

	public void setCar_parking_cover_no(String car_parking_cover_no) {
		this.car_parking_cover_no = car_parking_cover_no;
	}

	public String getCar_parking_open() {
		return car_parking_open;
	}

	public void setCar_parking_open(String car_parking_open) {
		this.car_parking_open = car_parking_open;
	}

	public String getCar_parking_open_no() {
		return car_parking_open_no;
	}

	public void setCar_parking_open_no(String car_parking_open_no) {
		this.car_parking_open_no = car_parking_open_no;
	}

	public String getWater_availabilitty() {
		return water_availabilitty;
	}

	public void setWater_availabilitty(String water_availabilitty) {
		this.water_availabilitty = water_availabilitty;
	}

	public String getElectricity_status() {
		return electricity_status;
	}

	public void setElectricity_status(String electricity_status) {
		this.electricity_status = electricity_status;
	}

	public String getFlooring() {
		return flooring;
	}

	public void setFlooring(String flooring) {
		this.flooring = flooring;
	}

	public String getAir_conditioning() {
		return air_conditioning;
	}

	public String getInternet() {
		return internet;
	}

	public void setInternet(String internet) {
		this.internet = internet;
	}

	public String getCable_tv() {
		return cable_tv;
	}

	public void setCable_tv(String cable_tv) {
		this.cable_tv = cable_tv;
	}

	public String getOven() {
		return oven;
	}

	public void setOven(String oven) {
		this.oven = oven;
	}

	public String getSwimming_pool() {
		return swimming_pool;
	}

	public void setSwimming_pool(String swimming_pool) {
		this.swimming_pool = swimming_pool;
	}

	public String getChildren_play_area() {
		return children_play_area;
	}

	public void setChildren_play_area(String children_play_area) {
		this.children_play_area = children_play_area;
	}

	public String getGas_connection() {
		return gas_connection;
	}

	public void setGas_connection(String gas_connection) {
		this.gas_connection = gas_connection;
	}

	public String getGeyser() {
		return geyser;
	}

	public void setGeyser(String geyser) {
		this.geyser = geyser;
	}

	public String getClub_house() {
		return club_house;
	}

	public void setClub_house(String club_house) {
		this.club_house = club_house;
	}

	public String getTerrace() {
		return terrace;
	}

	public void setTerrace(String terrace) {
		this.terrace = terrace;
	}

	public String getFridge() {
		return fridge;
	}

	public void setFridge(String fridge) {
		this.fridge = fridge;
	}

	public String getCurtains() {
		return curtains;
	}

	public void setCurtains(String curtains) {
		this.curtains = curtains;
	}

	public String getFan() {
		return fan;
	}

	public void setFan(String fan) {
		this.fan = fan;
	}

	public String getLights() {
		return lights;
	}

	public void setLights(String lights) {
		this.lights = lights;
	}

	public String getGymnasium() {
		return gymnasium;
	}

	public void setGymnasium(String gymnasium) {
		this.gymnasium = gymnasium;
	}

	public String getLift() {
		return lift;
	}

	public void setLift(String lift) {
		this.lift = lift;
	}

	public String getPower_back_up() {
		return power_back_up;
	}

	public void setPower_back_up(String power_back_up) {
		this.power_back_up = power_back_up;
	}

	public String getSecurity() {
		return security;
	}

	public void setSecurity(String security) {
		this.security = security;
	}

	public String getGarden() {
		return garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public String getReserved_parking() {
		return reserved_parking;
	}

	public void setReserved_parking(String reserved_parking) {
		this.reserved_parking = reserved_parking;
	}

	public String getBed() {
		return bed;
	}

	public void setBed(String bed) {
		this.bed = bed;
	}

	public String getCupboard() {
		return cupboard;
	}

	public void setCupboard(String cupboard) {
		this.cupboard = cupboard;
	}

	public String getWashing_machine() {
		return washing_machine;
	}

	public void setWashing_machine(String washing_machine) {
		this.washing_machine = washing_machine;
	}

	public String getIron() {
		return iron;
	}

	public void setIron(String iron) {
		this.iron = iron;
	}

	public String getVideo_door_lock() {
		return video_door_lock;
	}

	public void setVideo_door_lock(String video_door_lock) {
		this.video_door_lock = video_door_lock;
	}

	public String getSolar() {
		return solar;
	}

	public void setSolar(String solar) {
		this.solar = solar;
	}

	public void setAir_conditioning(String air_conditioning) {
		this.air_conditioning = air_conditioning;
	}

	

	

	public String getProperties_details() {
		return properties_details;
	}

	public void setProperties_details(String properties_details) {
		this.properties_details = properties_details;
	}

	public String getLandmark_details() {
		return landmark_details;
	}

	public void setLandmark_details(String landmark_details) {
		this.landmark_details = landmark_details;
	}

	public Date getProp_upload_date() {
		return prop_upload_date;
	}

	public void setProp_upload_date(Date prop_upload_date) {
		this.prop_upload_date = prop_upload_date;
	}

	public Date getProp_update_date() {
		return prop_update_date;
	}

	public void setProp_update_date(Date prop_update_date) {
		this.prop_update_date = prop_update_date;
	}

	public String getProp_uploaded_by() {
		return prop_uploaded_by;
	}

	public void setProp_uploaded_by(String prop_uploaded_by) {
		this.prop_uploaded_by = prop_uploaded_by;
	}

	public String getProp_updated_by() {
		return prop_updated_by;
	}

	public void setProp_updated_by(String prop_updated_by) {
		this.prop_updated_by = prop_updated_by;
	}

	public String getProp_active_status() {
		return prop_active_status;
	}

	public void setProp_active_status(String prop_active_status) {
		this.prop_active_status = prop_active_status;
	}
	
	
	private PropImg propImg;

	@OneToOne(targetEntity=PropImg.class,cascade=CascadeType.ALL)
	@JoinColumn(name="prop_id",referencedColumnName="prop_id_fk")
	private PropImg getPropImg() {
		return propImg;
	}

	private void setPropImg(PropImg propImg) {
		this.propImg = propImg;
	}
	
	

}

