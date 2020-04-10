package com.kh.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File originFile) { 

		String originName = originFile.getName(); 

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
		
		int dot = originName.lastIndexOf("."); 
		String ext = originName.substring(dot);
		
		String fileName = currentTime + ext;
		
		File renameFile = new File(originFile.getParent(), fileName);
		return renameFile;
	}
	
}
