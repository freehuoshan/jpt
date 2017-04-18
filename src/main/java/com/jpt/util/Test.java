package com.jpt.util;

import java.util.Arrays;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.StringUtils;

public class Test {
 	public static void main(String[] args){
 		String smtpHost = "smtp.qiye.163.com";//"smtp.163.com";
 		String smptPort = "25";
 		
 		String sender = "send@6vidu.com";//"azul_test@163.com";
 		String pwd = "2xB4QGtu4NZUQDaR";//"nER%j(Y@";//"azulhello0906";
 		
 		List<String> recipients = Arrays.asList("79523601@qq.com") ;
 		Properties prop=new Properties();
		prop.put("mail.host",smtpHost );
		prop.put("mail.transport.protocol", "smtp");
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.port", smptPort );
		//1.创建sesssion
		Session session;
		session=Session.getInstance(prop);
		//开启session的调试模式，可以查看当前邮件发送状态
		session.setDebug(true);
		
		try {
			InternetAddress[] recers = new InternetAddress[recipients.size()];
			for (int i=0; i< recipients.size(); i++) {
				recers[i] = new InternetAddress(recipients.get(i)) ;
			}
			
			//4.创建邮件
			Message mm=new MimeMessage(session);
			mm.setSubject("sss");
			mm.setText("kkk");
			//设置发件人
			mm.setFrom(new InternetAddress( sender ));
			//设置收件人
			mm.setRecipient(Message.RecipientType.TO, new InternetAddress("79523601@qq.com"));
			//设置抄送人
			mm.setRecipient(Message.RecipientType.CC, new InternetAddress("1119715806@qq.com"));

			mm.setSubject("JAVA邮件！");
			Transport ts=session.getTransport();
//			ts.connect( StringUtils.substringBefore(sender, "@"), pwd );
//			ts.connect( smtpHost,StringUtils.substringBefore(sender, "@"), pwd );
			ts.connect( smtpHost ,25, sender, pwd );
			System.out.println("why??");
			ts.sendMessage(mm, mm.getAllRecipients());
			
			ts.close();
			
 		System.out.println("123");
		}catch(Exception e){
			e.printStackTrace();
		}
 	}
}
