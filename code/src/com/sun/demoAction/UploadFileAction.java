package com.sun.demoAction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadFileAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private File fileInput;
	private String fileInputFileName;

	public File getFileInput() {
		return fileInput;
	}

	public void setFileInput(File fileInput) {
		this.fileInput = fileInput;
	}

	public String getFileInputFileName() {
		return fileInputFileName;
	}

	public void setFileInputFileName(String fileInputFileName) {
		this.fileInputFileName = fileInputFileName;
	}

	// @SuppressWarnings("deprecation")
	public String execute() throws Exception {
		String savePath = ServletActionContext.getServletContext().getRealPath(
				"/upload_files");
		File dir = new File(savePath);
		if (!dir.exists())
			dir.mkdir();
		File newFile = new File(dir, fileInputFileName);

		InputStream in = new FileInputStream(fileInput);
		OutputStream out = new FileOutputStream(newFile);
		byte[] buffer = new byte[1024 * 1024];
		int length;
		while ((length = in.read(buffer)) > 0) {
			out.write(buffer, 0, length);
		}
		in.close();
		out.close();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.getWriter().print("成功上传文件：" + fileInputFileName + "！");

		return null; 
	}

}
