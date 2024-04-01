package com.ims.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int oid;

	private int quantity;

	@OneToOne
	@JoinColumn(name = "pid")
	private Products product;

	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Orders(int oid, int quantity, Products product, User user) {
		super();
		this.oid = oid;
		this.quantity = quantity;
		this.product = product;
		this.user = user;
	}

	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", quantity=" + quantity + ", product=" + product + ", user=" + user + "]";
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

}
