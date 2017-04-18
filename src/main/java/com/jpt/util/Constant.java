package com.jpt.util;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Constant {
	protected final Logger logger = LoggerFactory.getLogger(getClass());
	public static String tmpDir;

	public String getTmpDir() {
		return Constant.tmpDir;
	}

	public void setTmpDir(String tmpDir) {
		File tmpD =  new File(tmpDir);
		if(!tmpD.exists()){
			tmpD.mkdirs();
		}
		Constant.tmpDir = tmpDir;
		logger.warn("Constant.tmpDir:"+Constant.tmpDir);
	}
	
	
}
