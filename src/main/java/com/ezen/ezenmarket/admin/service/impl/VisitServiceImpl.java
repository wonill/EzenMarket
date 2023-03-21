package com.ezen.ezenmarket.admin.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.service.VisitService;

@Service
public class VisitServiceImpl implements VisitService {

	@Autowired
    private DataSource dataSource;
	
	@Override
	public void increaseVisitCount() {
		try (Connection conn = dataSource.getConnection();
				PreparedStatement ps = conn.prepareStatement("INSERT INTO visitor VALUES(visit_id_seq.nextval, sysdate)")) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}