package com.vig.shop.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name="CART")
public class Cart implements Serializable {

	private static final long serialVersionUID = 3940548625296145582L;

	@Id
	@GeneratedValue
	private int cartId;

	@OneToMany(mappedBy = "cartId", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Cart> cartItems;

	@OneToOne
	@JoinColumn(name = "userId")
	@JsonIgnore
	private UserBean customer;

	private double grandTotal;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public UserBean getCustomer() {
		return customer;
	}

	public void setCustomer(UserBean customer) {
		this.customer = customer;
	}

	public List<Cart> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<Cart> cartItems) {
		this.cartItems = cartItems;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

}
