package com.ims.Repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ims.Model.Administrator;
	@Repository
	public interface AdministratorInfo extends JpaRepository<Administrator, Integer> {
		
		public Administrator findByEmail(String email);
	}

	

