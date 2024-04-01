package com.ims.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ims.Model.Products;

@Repository
public interface ProductsInfo extends JpaRepository<Products, Integer> {
	public Products findById(int pid);
}
