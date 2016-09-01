package com.vig.shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class BillingAddress {


	@Id
	@GeneratedValue
	private int billAddId;

	private String street;
	private String apartment;
	private String city;
	private String state;
	private String nation;
	private String zipcode;

	@OneToOne
	private UserBean usbe;

	public int getBillAddId() {
		return billAddId;
	}

	public void setBillAddId(int billAddId) {
		this.billAddId = billAddId;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getApartment() {
		return apartment;
	}

	public void setApartment(String apartment) {
		this.apartment = apartment;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public UserBean getUsbe() {
		return usbe;
	}

	public void setUsbe(UserBean usbe) {
		this.usbe = usbe;
	}

	@Override
	public String toString() {
		return "BillingAddress{" + "streetName='" + street + '\'' + ", apartmentNumber='" + apartment + '\''
				+ ", city='" + city + '\'' + ", state='" + state + '\'' + ", country='" + nation + '\'' + ", zipCode='"
				+ zipcode + '\'' + '}';
	}

} 
