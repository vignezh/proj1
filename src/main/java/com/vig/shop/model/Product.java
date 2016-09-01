package com.vig.shop.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity(name = "PRODUCT")
@Component
public class Product {
	@NotNull
	private String productId;
	@NotNull
	private String name;
	@NotNull
	private String quantity;
	@NotNull
	private float price;
	@NotNull
	private String category;
	@NotNull
	private int size;
	@NotNull
	private String desc;

	private transient MultipartFile filename;
	
	private transient MultipartFile imagename;
	/*@ManyToOne
	private String cartId;

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
*/
	@Transient
	public MultipartFile getImagename() {
		return imagename;
	}

	public void setImagename(MultipartFile imagename) {
		this.imagename = imagename;
	}

	@Transient
	public MultipartFile getFilename() {
		return filename;
	}

	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Id
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
