package com.ezen.ezenmarket.admin.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.service.AdminMainPageService;

@Service
public class AdminMainPageServiceImpl implements AdminMainPageService {
	
	@Autowired
    private DataSource dataSource;
	
	@Override
	public int getTodayVisitor() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM visitor WHERE TRUNC(visit_time) = TRUNC(SYSDATE)");
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
	public int[] getWeekdayVisitorCount() {
		int[] counts = new int[7]; 

	    try (Connection conn = dataSource.getConnection();
	         PreparedStatement ps = conn.prepareStatement("SELECT \r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 2 THEN 1 END) AS monday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 3 THEN 1 END) AS tuesday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 4 THEN 1 END) AS wednesday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 5 THEN 1 END) AS thursday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 6 THEN 1 END) AS friday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 7 THEN 1 END) AS saturday,\r\n"
	                + "    COUNT(CASE WHEN TO_CHAR(visit_time, 'D') = 1 THEN 1 END) AS sunday\r\n"
	                + "FROM visitor\r\n"
	                + "WHERE visit_time BETWEEN TRUNC(SYSDATE, 'IW') AND SYSDATE")) {
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            counts[0] = rs.getInt("monday");
	            counts[1] = rs.getInt("tuesday");
	            counts[2] = rs.getInt("wednesday");
	            counts[3] = rs.getInt("thursday");
	            counts[4] = rs.getInt("friday");
	            counts[5] = rs.getInt("saturday");
	            counts[6] = rs.getInt("sunday");
	        }
	        
	        rs.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return counts;
	}
	
	@Override
	public int getThisMonthVisitor() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM visitor WHERE visit_time >= TRUNC(SYSDATE, 'MONTH') AND visit_time < ADD_MONTHS(TRUNC(SYSDATE, 'MONTH'), 1)");
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
	public int getReportCount() {
		int count = 0;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM report WHERE report_status = '0'");
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
	public int getPostCount() {
		int count = 0;
		try (Connection conn = dataSource.getConnection();
	             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE EXTRACT(MONTH FROM created) = 3");
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
	public int getCategoryFirst() {
		int count = 0;
		try (Connection conn = dataSource.getConnection();
	             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE category_id = 1");
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
	public int getCategorySecond() {
		int count = 0;
		try (Connection conn = dataSource.getConnection();
	             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE category_id = 2");
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
	public int getCategoryThird() {
		int count = 0;
		try (Connection conn = dataSource.getConnection();
	             PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*) FROM post WHERE category_id = 3");
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