package com.sun.demoAction;

import java.io.File;
import java.util.List;

public class FileUtil {
	private String path;
	private List<File> list;
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public List<File> getList() {
		return list;
	}
	public void setList(List<File> list) {
		this.list = list;
	}
	public void listFile(String path,List<File> list)
	{
		 File file = new File(path);
		  File[] subFile = file.listFiles();
		  for (int i = 0; i < subFile.length; i++) {
		   if (subFile[i].isDirectory()) {
		    listFile(subFile[i].getAbsolutePath(), list);
		   } else {
		    list.add(subFile[i]);
		   }
		  }
		 // return list;
	}

}
