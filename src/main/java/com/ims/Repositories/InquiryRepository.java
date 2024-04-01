package com.ims.Repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.Model.Inquiry;

public interface InquiryRepository extends JpaRepository<Inquiry, Long> {
}
