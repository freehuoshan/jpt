package com.jpt.module;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jpt.util.MailSender;

public abstract class BasicControl {

	protected final Logger logger = LoggerFactory.getLogger(getClass());

	private static Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create() ;

//	@InitBinder  
//	protected void initBinder(WebDataBinder binder) {  
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));  
//		//        binder.registerCustomEditor(int.class, new IntegerEditor());  
//		//        binder.registerCustomEditor(long.class, new LongEditor());  
//		//        binder.registerCustomEditor(double.class, new DoubleEditor());  
//		//        binder.registerCustomEditor(float.class, new FloatEditor());  
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
//	}  

	protected void writeJson(HttpServletResponse response, Object obj) {
		PrintWriter out = null;
		try {
			response.setContentType("application/json;charset=UTF-8");
			response.setHeader("Cache-Control", "no-cache");
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			out.write(gson.toJson(obj).toCharArray());
			out.flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		} finally{
			IOUtils.closeQuietly(out);
		}
	}
	protected void writeString(HttpServletResponse response, Object obj) {
		PrintWriter out = null;
		try {
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			out.write(String.valueOf(obj).toCharArray());
			out.flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		} finally{
			IOUtils.closeQuietly(out);
		}
	}
	Map<String, ?> paraMap;
	@SuppressWarnings("unchecked")
	protected Map<String, ?> getParaMap(HttpServletRequest request){
		if(paraMap == null){
			paraMap = request.getParameterMap();
		}
		return paraMap;
	}
	protected Map<?, ?> getSessionMap(HttpServletRequest request){
		//		Enumeration<?> e = request.getSession().getAttributeNames();
		//		if(e.hasMoreElements()){
		//			map.put(e,request.get );
		//		}

		return null;
	}

	public static void main(String[] args){	
		File f = new File("D:/fileTmpDir/20170327320+50.png");
		try {
			f.getParentFile().mkdirs();
			f.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("123");
	}
}
