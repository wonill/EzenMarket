package com.ezen.ezenmarket.admin.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.service.AdminPostlistService;

@Service
public class AdminPostlistServiceImpl implements AdminPostlistService {

	@Autowired
    private DataSource dataSource;
	
	@Override
	public int getTodayPostCount() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE TRUNC(created) = TRUNC(SYSDATE)");
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return count;
	}
	
	@Override
	public int getLastMonthPostCount() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE EXTRACT(MONTH FROM created) = EXTRACT(MONTH FROM ADD_MONTHS(SYSDATE, -1)) AND EXTRACT(YEAR FROM created) = EXTRACT(YEAR FROM ADD_MONTHS(SYSDATE, -1))");
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return count;
	}
	
	@Override
	public int getThisMonthEndDealPostCount() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(DISTINCT p.post_id) FROM post p JOIN enddeal e ON p.post_id = e.post_id WHERE p.created >= TRUNC(SYSDATE, 'MM') AND p.created < TRUNC(ADD_MONTHS(SYSDATE,1), 'MM')");
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return count;
	}
	
	
}