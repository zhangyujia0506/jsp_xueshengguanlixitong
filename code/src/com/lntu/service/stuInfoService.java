package com.lntu.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lntu.model.stuInfo;

public class stuInfoService {
	private Connection conn;
	private PreparedStatement pstmt;

	public stuInfoService() {
		conn = new com.lntu.conn.conn().getCon();
	}

	public boolean addStu(stuInfo stu) {
		try {
			pstmt = conn.prepareStatement("insert into studentinfo"
					+ "(XH,XM,JG,CSRQ,ZZMM,SFZH,CCQJ,XB,MZ,YX,ZY,BJ,WYYZ,JTDZ,LXDH,DZYX,BZ) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, stu.getXH());
			pstmt.setString(2, stu.getXM());
			pstmt.setString(3, stu.getJG());
			pstmt.setString(4, stu.getCSRQ());
			pstmt.setString(5, stu.getZZMM());
			pstmt.setString(6, stu.getSFZH());
			pstmt.setString(7, stu.getCCQJ());
			pstmt.setByte(8, stu.getXB());
			pstmt.setString(9, stu.getMZ());
			pstmt.setString(10, stu.getYX());
			pstmt.setString(11, stu.getZY());
			pstmt.setString(12, stu.getBJ());
			pstmt.setString(13, stu.getWYYZ());
			pstmt.setString(14, stu.getJTDZ());
			pstmt.setString(15, stu.getLXDH());
			pstmt.setString(16, stu.getDZYX());
			pstmt.setString(17, stu.getBZ());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}

	}

	public List queryAllStu() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("SELECT * FROM studentinfo ORDER BY XH ASC");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setXH(rs.getString(2));
				stu.setXM(rs.getString(3));
				stu.setJG(rs.getString(4));
				if (rs.getDate(5) != null)
					stu.setCSRQ(rs.getDate(5).toString());
				stu.setZZMM(rs.getString(6));
				stu.setSFZH(rs.getString(7));
				stu.setCCQJ(rs.getString(8));
				stu.setXB(rs.getByte(9));
				stu.setMZ(rs.getString(10));
				stu.setYX(rs.getString(11));
				stu.setZY(rs.getString(12));
				stu.setBJ(rs.getString(13));
				stu.setWYYZ(rs.getString(14));
				stu.setJTDZ(rs.getString(15));
				stu.setLXDH(rs.getString(16));
				stu.setDZYX(rs.getString(17));
				stu.setBZ(rs.getString(18));
				stus.add(stu);

			}
			return stus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public stuInfo queryStubyID(int id) {
		// List stus = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select * from studentinfo where id=?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setXH(rs.getString(2));
				stu.setXM(rs.getString(3));
				stu.setJG(rs.getString(4));
				if (rs.getDate(5) != null)
					stu.setCSRQ(rs.getDate(5).toString());
				stu.setZZMM(rs.getString(6));
				stu.setSFZH(rs.getString(7));
				stu.setCCQJ(rs.getString(8));
				stu.setXB(rs.getByte(9));
				stu.setMZ(rs.getString(10));
				stu.setYX(rs.getString(11));
				stu.setZY(rs.getString(12));
				stu.setBJ(rs.getString(13));
				stu.setWYYZ(rs.getString(14));
				stu.setJTDZ(rs.getString(15));
				stu.setLXDH(rs.getString(16));
				stu.setDZYX(rs.getString(17));
				stu.setBZ(rs.getString(18));
				return stu;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public boolean updateStu(stuInfo stu) {

		try {
			pstmt = conn.prepareStatement("update  studentinfo set XH=? , XM=? , JG=? ,CSRQ=? ,ZZMM=? ,SFZH=? , CCQJ=?, XB=?, MZ=?, YX=?, ZY=?, BJ=?, WYYZ=?, JTDZ=?, LXDH=?,DZYX=?,BZ=?  where id=?");
			pstmt.setString(1, stu.getXH());
			pstmt.setString(2, stu.getXM());
			pstmt.setString(3, stu.getJG());
			pstmt.setString(4, stu.getCSRQ());
			pstmt.setString(5, stu.getZZMM());
			pstmt.setString(6, stu.getSFZH());
			pstmt.setString(7, stu.getCCQJ());
			pstmt.setByte(8, stu.getXB());
			pstmt.setString(9, stu.getMZ());
			pstmt.setString(10, stu.getYX());
			pstmt.setString(11, stu.getZY());
			pstmt.setString(12, stu.getBJ());
			pstmt.setString(13, stu.getWYYZ());
			pstmt.setString(14, stu.getJTDZ());
			pstmt.setString(15, stu.getLXDH());
			pstmt.setString(16, stu.getDZYX());
			pstmt.setString(17, stu.getBZ());
			pstmt.setInt(18, stu.getId());
			
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public Boolean deleteStu(int id) {

		try {
			pstmt = conn.prepareStatement("delete from  studentinfo where id=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.getStackTrace();
			return false;
		}

	}
}
