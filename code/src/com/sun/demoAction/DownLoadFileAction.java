package com.sun.demoAction;

import java.io.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownLoadFileAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String fileName;
	private String path;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public InputStream getDownLoadFile() throws UnsupportedEncodingException {
		fileName = new String(fileName.getBytes("ISO8859-1"), "UTF-8");
		return ServletActionContext.getServletContext().getResourceAsStream(
				path + fileName);
	}

	public String getDownloadChineseFileName() {
		String downloadChineseFileName = fileName;
		try {
			downloadChineseFileName = new String(downloadChineseFileName
					.getBytes("gbk"), "iso8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return downloadChineseFileName;
	}

	@Override
	public String execute() throws Exception {
		return "success";
	}

}
