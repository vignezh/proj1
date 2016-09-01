package com.vig.shop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Component
public class UserBean implements Serializable {
	private static final long serialVersionUID = 4657462015039726030L;
	@Id
	@Column
	@NotEmpty(message = "Id field is mandatory")
	private String userId = null;
	@Column
	@NotEmpty(message = "Email field is mandatory")
	private String email = null;
	@Column
	@NotNull
	private Integer age;
	@Column
	@Length(max = 16, min = 6, message = "Enter Valid password")
	@NotEmpty(message = "Password should not be empty")
	private String pass = null;
	/*@NotEmpty(message = "Retype Password should not be empty")
	private String repass = null;
	*/
	@Length(max = 10, min = 10, message = "Phone number is not valid. Should be of length 10")
	@NotEmpty(message = "Contact field is mendatory")
	@NumberFormat(style = Style.NUMBER)
	private String mobile;
	@Column
	private boolean enabled=true;
	/*@OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;*/
/*	@OneToOne
    @JoinColumn(name = "billingAddressId")
    private BillingAddress billAddr;
*/
    
	
/*	public BillingAddress getBillAddr() {
		return billAddr;
	}
	public void setBillAddr(BillingAddress billAddr) {
		this.billAddr = billAddr;
	}
	*/
	/*CART GETTER & SETTER*/
	/*public Cart getCart() {
        return cart;
    }
	public void setCart(Cart cart) {
        this.cart = cart;
    }*/
	/*BOOLEAN GETTER & SETTER*/
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	/*MOBILE GETTER & SETTER*/
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/*RE-PASSWORD GETTER & SETTER*/
	/*public String getRepass() {
		return repass;
	}
	public void setRepass(String repass) {
		this.repass = repass;
	}*/
	/*PASSWORD GETTER & SETTER*/
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	/*AGE GETTER & SETTER*/
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	/*E-MAIL GETTER & SETTER*/
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*USERID GETTER & SETTER*/
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}	
	
	// @Column
	// private boolean enable;
	/*
	 * @Column
	 * 
	 * @NotEmpty(message = "Contact field is mandatory.") private Integer
	 * mobile;
	 * 
	 * public Integer getMobile() { return mobile; }
	 * 
	 * public void setMobile(Integer mobile) { this.mobile = mobile; }
	 */

	/*
	 * public boolean getEnable() { return enable; }
	 * 
	 * public void setEnable(boolean enable) { this.enable = enable; }
	 * 
	 * @Column private boolean isenabled = true;
	 * 
	 * public boolean isIsenabled() { return isenabled; }
	 * 
	 * public void setIsenabled(boolean isenabled) { this.isenabled = isenabled;
	 * }
	 */
