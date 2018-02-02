package com.lntu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lntu.model.stuInfo;
import com.lntu.service.stuInfoService;

public class inputStuInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public inputStuInfoServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
		String XH=request.getParameter("XH");
		String XM=request.getParameter("XM");
		String JG=request.getParameter("JG");
		String CSRQ=request.getParameter("CSRQ");
		String ZZMM=request.getParameter("ZZMM");
		String SFZH=request.getParameter("SFZH");
		String CCQJ=request.getParameter("CCQJ");
		byte XB=Byte.parseByte(request.getParameter("XB"));
		String MZ=request.getParameter("MZ");
		String YX=request.getParameter("YX");
		String ZY=request.getParameter("ZY");
		String BJ=request.getParameter("BJ");
		String WYYZ=request.getParameter("WYYZ");
		String JTDZ=request.getParameter("JTDZ");
		String LXDH=request.getParameter("LXDH");
		String DZYX=request.getParameter("DZYX");
		String BZ=request.getParameter("BZ");
		stuInfo stu=new stuInfo();
		stu.setXH(XH);
		stu.setXM(XM);
		stu.setJG(JG);
		stu.setCSRQ(CSRQ);
		if(CSRQ.equals(""))
			stu.setCSRQ(null);
		stu.setZZMM(ZZMM);
		stu.setSFZH(SFZH);
		stu.setCCQJ(CCQJ);
		stu.setXB(XB);
		stu.setMZ(MZ);
		stu.setYX(YX);
		stu.setZY(ZY);
		stu.setBJ(BJ);
		stu.setWYYZ(WYYZ);
		stu.setJTDZ(JTDZ);
		stu.setLXDH(LXDH);
		stu.setDZYX(DZYX);
		stu.setBZ(BZ);
		if(BZ.equals(""))
			stu.setBZ(null);
		if(new stuInfoService().addStu(stu))
			response.sendRedirect("../inputStuInfo_success.jsp");
		else
			response.sendRedirect("../inputStuInfo_error.jsp");
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
