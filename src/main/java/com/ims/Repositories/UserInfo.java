package com.ims.Repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ims.Model.User;


@Repository
public interface UserInfo extends JpaRepository<User, Integer> {

	public User findByEmail(String email);

	public User findById(int id);

//	public User findByEmail(String useremail);
}
