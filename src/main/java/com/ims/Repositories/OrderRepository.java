package com.ims.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.Model.Orders;
import com.ims.Model.Products;

public interface OrderRepository extends JpaRepository<Orders, Integer> {

	void save(Products obj);

	public List<Orders> findById(int user_id);
}

