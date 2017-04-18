package com.jpt.module;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jpt.log.BizLog;
import com.jpt.util.Constant;
import com.jpt.util.DateUtil;
import com.jpt.util.MailSender;

@Controller("/index")
@RequestMapping("/index")
public class Index extends BasicControl {

	@Autowired
	MailSender mailSender;
	@RequestMapping(value="",method=RequestMethod.GET)
	public String execute(HttpServletRequest request,HttpServletResponse response,
			Model model){

		return "index";
	}

	//成为专家，有文件上传（简历）
	@RequestMapping(value="/postData1",method=RequestMethod.POST)
	public void postData1(HttpServletRequest request,HttpServletResponse response,
			Model model) throws IOException, Exception{
		logger.info("成为专家，有文件上传（简历）");
		StringBuilder filePath = new StringBuilder();
		StringBuilder sb = new StringBuilder();
		filePath.append(Constant.tmpDir).append("/").append(DateUtil.getFormat(new Date(),"yyyyMMdd")).append("_")
		.append(RandomStringUtils.random(3,'0','1','2','3','4','5','6','7','8','9','a','b','c'))
		.append("_");
		File dest = null;
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Iterator<String> item = multipartRequest.getFileNames();
		while (item.hasNext()) {
			String fileName1 = (String) item.next();
			logger.info("fileName1:"+fileName1);
			MultipartFile mfile = multipartRequest.getFile(fileName1);
			dest = new File(filePath.append(mfile.getOriginalFilename()).toString());
			logger.info(dest.getAbsolutePath());
			dest.createNewFile();
			mfile.transferTo(dest);
			logger.info("getOriginalFilename:"+mfile.getOriginalFilename());
		}
		Map<String, String> map = multipartRequest.getParameterMap();

		for( Entry entry : map.entrySet() ){
			String[] va = (String[]) entry.getValue();
			if(Objects.equals( entry.getKey(),"username")){
				sb.append("姓名:").append(Arrays.toString(va));
			}else if(Objects.equals( entry.getKey(),"industry")){
				sb.append("行业:").append(Arrays.toString(va));
			}else if(Objects.equals( entry.getKey(),"phone")){
				sb.append("联系方式:").append(Arrays.toString(va));
			}else if(Objects.equals( entry.getKey(),"company")){
				sb.append("公司名称:").append(Arrays.toString(va));
			}else if(Objects.equals( entry.getKey(),"email")){
				sb.append("email:").append(Arrays.toString(va));
			}else{
				
			}
		}
		
		BizLog.logger.warn("biz-成为专家:{},文件:{}",sb,dest.getAbsolutePath());
		mailSender.send(Arrays.asList(StringUtils.split(mailSender.recipients, ",")), "成为专家", sb.toString(), dest );
		response.sendRedirect("/index");
	}
	//成为客户
	@RequestMapping(value="/postData2",method=RequestMethod.POST)
	public void postData2(HttpServletRequest request,HttpServletResponse response,
			Model model) throws IOException{
		logger.info("成为客户");
		String username = request.getParameter("username");
		String industry = request.getParameter("industry");
		String phone = request.getParameter("phone");
		String company = request.getParameter("company");
		String email = request.getParameter("email");

		logger.info("姓名：{},行业：{},电话：{},公司：{},电子邮箱：{}"
				,username, industry,phone
				,company, email
				);
		StringBuilder sb = new StringBuilder();
		sb.append("姓名:[").append(username).append("]")
		.append("行业：[").append(industry).append("]")
		.append("联系方式：[").append(phone).append("]")
		.append("公司：[").append(company).append("]")
		.append("email:[").append(email).append("]")
		;
		BizLog.logger.warn("biz-成为客户:{}",sb);
		mailSender.send(Arrays.asList(StringUtils.split(mailSender.recipients, ",")), "成为客户", sb.toString(), null );

		response.sendRedirect("/index");
	}
	//推荐专家
	@RequestMapping(value="/postData3",method=RequestMethod.POST)
	public void postData3(HttpServletRequest request,HttpServletResponse response,
			Model model) throws IOException{
		logger.info("推荐专家");
		String username = request.getParameter("username");
		String industry = request.getParameter("industry");
		String phone = request.getParameter("phone");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String tjusername = request.getParameter("tjusername");
		String tjindustry = request.getParameter("tjindustry");
		String tjphone = request.getParameter("tjphone");
		String tjcompany = request.getParameter("tjcompany");
		String tjemail = request.getParameter("tjemail");
		logger.info("姓名：{},行业：{},电话：{},公司：{},电子邮箱：{}"
				,username, industry,phone
				,company, email
				);
		logger.info("姓名：{},行业：{},电话：{},公司：{},电子邮箱：{}"
				,tjusername, tjindustry,tjphone
				,tjcompany, tjemail
				);
		StringBuilder sb = new StringBuilder();
		sb.append("推荐人")
		.append("姓名:[").append(username).append("]")
		.append("行业：[").append(industry).append("]")
		.append("联系方式：[").append(phone).append("]")
		.append("公司：[").append(company).append("]")
		.append("email:[").append(email).append("]")
		.append("被推荐人")
		.append("姓名:[").append(tjusername).append("]")
		.append("行业：[").append(tjindustry).append("]")
		.append("联系方式：[").append(tjphone).append("]")
		.append("公司：[").append(tjcompany).append("]")
		.append("email:[").append(tjemail).append("]")
		;
		BizLog.logger.warn("biz-推荐专家:{}",sb);
		mailSender.send(Arrays.asList(StringUtils.split(mailSender.recipients, ",")), "推荐专家", sb.toString(), null );
		response.sendRedirect("/index");
	}
	//推荐客户
	@RequestMapping(value="/postData4",method=RequestMethod.POST)
	public void postData4(HttpServletRequest request,HttpServletResponse response,
			Model model) throws IOException{
		logger.info("推荐客户");
		String username = request.getParameter("username");
		String industry = request.getParameter("industry");
		String phone = request.getParameter("phone");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String tjusername = request.getParameter("tjusername");
		String tjindustry = request.getParameter("tjindustry");
		String tjphone = request.getParameter("tjphone");
		String tjcompany = request.getParameter("tjcompany");
		String tjemail = request.getParameter("tjemail");
		logger.info("姓名：{},行业：{},电话：{},公司：{},电子邮箱：{}"
				,username, industry,phone
				,company, email
				);
		logger.info("姓名：{},行业：{},电话：{},公司：{},电子邮箱：{}"
				,tjusername, tjindustry,tjphone
				,tjcompany, tjemail
				);
		StringBuilder sb = new StringBuilder();
		sb.append("推荐人").append("\n")
		.append("姓名:[").append(username).append("]")
		.append("行业：[").append(industry).append("]")
		.append("联系方式：[").append(phone).append("]")
		.append("公司：[").append(company).append("]")
		.append("email:[").append(email).append("]")
		.append("被推荐人").append("\n")
		.append("姓名:[").append(tjusername).append("]")
		.append("行业：[").append(tjindustry).append("]")
		.append("联系方式：[").append(tjphone).append("]")
		.append("公司：[").append(tjcompany).append("]")
		.append("email:[").append(tjemail).append("]")
		;
		BizLog.logger.warn("biz-推荐客户:{}",sb);
		mailSender.send(Arrays.asList(StringUtils.split(mailSender.recipients, ",")), "推荐客户", sb.toString(), null );
		response.sendRedirect("/index");
	}
}
