package com.jpt.util;

import java.io.File;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.Security;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeMultipart;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailSender {
//	private String smtpHost = "smtp.163.com";//"smtp.qiye.163.com";
//	private String smptPort = "994";
//	private String sender = "azul_test@163.com";
//	private String pwd = "azulhello0906";//"2xB4QGtu4NZUQDaR";//"nER%j(Y@";//"azulhello0906";
	
	private String smtpHost = "smtphz.qiye.163.com";//"smtp.ym.163.com";
	private String smptPort = "994";
	private String sender = "send@6vidu.com";
	private String pwd = "Ls79x2PPQz4y3XXa";//"2xB4QGtu4NZUQDaR";//"nER%j(Y@";//"azulhello0906"; Ls79x2PPQz4y3XXa
	
	public  String recipients  ;
	
	private Session session;
	public void init() throws Exception{
		System.out.println("init...");
		//开启安全协议
		MailSSLSocketFactory sf = null;
		try {
			sf = new MailSSLSocketFactory();
			sf.setTrustAllHosts(true);
		} catch (GeneralSecurityException e1) {
			e1.printStackTrace();
		}
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());  
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		  
		Properties prop=new Properties();
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.socketFactory", sf);
		prop.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);  
		prop.setProperty("mail.smtp.socketFactory.fallback", "false");
		
		prop.put("mail.host",smtpHost );
		prop.put("mail.transport.protocol", "smtp");
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.port", smptPort );
		prop.setProperty("mail.smtp.socketFactory.port", smptPort);
		//1.创建sesssion
		session=Session.getInstance(prop);
		//开启session的调试模式，可以查看当前邮件发送状态
		session.setDebug(true);

		//2.通过session获取Transport对象（发送邮件的核心API）
		//		Transport ts=session.getTransport();
		//3.通过邮件用户名密码链接
	}
	public void close(){

	}

	public void send( final List<String> recipients, String subject, String content, File addFile ){
		try {
			InternetAddress[] recers = new InternetAddress[recipients.size()];
			for (int i=0; i< recipients.size(); i++) {
				recers[i] = new InternetAddress(recipients.get(i)) ;
			}
			Transport ts=session.getTransport();
//			ts.connect( StringUtils.substringBefore(sender, "@"), pwd );
			ts.connect( sender, pwd );
			//4.创建邮件
			//			Message msg=createSimpleMail(session);

			Message msg = new MimeMessage(session);
			msg.setSubject ( subject );
			msg.setFrom(new InternetAddress(sender));
			//设置收件人
			msg.setRecipients(Message.RecipientType.TO, recers);
			//设置抄送人
			//			msg.setRecipient(Message.RecipientType.CC, new InternetAddress("1119715806@qq.com"));

			Multipart multipart = new MimeMultipart();

			// 设置邮件的文本内容
			BodyPart contentPart = new MimeBodyPart();
			//        contentPart.setText("邮件的具体内容在此");
			contentPart.setContent( content, "text/html;charset=gbk" );

			multipart.addBodyPart(contentPart);
			if(addFile!=null && addFile.exists()){
				// 添加附件
				BodyPart messageBodyPart = new MimeBodyPart();
				DataSource source = new FileDataSource(addFile.getAbsolutePath());
				// 添加附件的内容
				messageBodyPart.setDataHandler(new DataHandler(source));
				// 添加附件的标题
				// 这里很重要，通过下面的Base64编码的转换可以保证你的中文附件标题名在发送时不会变成乱码
				sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();
				messageBodyPart.setFileName("=?GBK?B?"
						+ enc.encode( (addFile.getName()).getBytes(Charset.forName("GBK"))) + "?=");
				multipart.addBodyPart(messageBodyPart);
			}
			// 将multipart对象放到message中
			msg.setContent(multipart);
			msg.saveChanges();

			//5.发送电子邮件
			ts.sendMessage(msg, msg.getAllRecipients());

			ts.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void send( final List<String> recipients, String subject, String content ){
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

			mm.setSubject("第一封JAVA邮件！");
			Transport ts=session.getTransport();
//			ts.connect( StringUtils.substringBefore(sender, "@"), pwd );
//			ts.connect( smtpHost,StringUtils.substringBefore(sender, "@"), pwd );
			ts.connect( smtpHost,sender, pwd );
//			ts.connect( sender, pwd );
			ts.sendMessage(mm, mm.getAllRecipients());
			
			ts.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

	public static void main(String[] args) throws Exception{
		String filePath = "C:/Users/Mylyn/Desktop/t/s - 副本.xml";
		MailSender sender = new MailSender();
		sender.init();
//		sender.send(Arrays.asList("79523601@qq.com"), "sujet", "content", new File(filePath));
//		
//		sender.send(Arrays.asList("79523601@qq.com"), "sujet3", "content", new File(filePath));
//		
//		sender.send(Arrays.asList("79523601@qq.com","1119715806@qq.com"), "sujet4", "content", new File(filePath));
		
		sender.send(Arrays.asList("79523601@qq.com"), "sujet00", "content" );
		System.out.println("end...s");


//				String filePath = "C:/Users/Mylyn/Desktop/t/s.xml";
//				//		azul_test@163.com
//				//		azul0906
//				//		类型 	服务器名称 	服务器地址 	SSL协议端口号 	非SSL协议端口号
//				//		收件服务器 	POP 	pop.163.com 	995 	110
//				//		收件服务器 	IMAP 	imap.163.com 	993 	143
//				//		发件服务器 	SMTP 	smtp.163.com 	465/994 	25
//				Properties prop=new Properties();
//				prop.put("mail.host","smtp.163.com" );
//				prop.put("mail.transport.protocol", "smtp");
//				prop.put("mail.smtp.auth", true);
//				//1.创建sesssion
//				Session session=Session.getInstance(prop);
//				//开启session的调试模式，可以查看当前邮件发送状态
//				session.setDebug(true);
//		
//				//2.通过session获取Transport对象（发送邮件的核心API）
//				Transport ts=session.getTransport();
//				//3.通过邮件用户名密码链接
//				ts.connect("azul_test", "azulhello0906");
//				//4.创建邮件
//				Message msg=createSimpleMail(session);
//				msg.setSubject("subg");
//		
//				Multipart multipart = new MimeMultipart();
//		
//				// 设置邮件的文本内容
//				BodyPart contentPart = new MimeBodyPart();
//				        contentPart.setText("邮件的具体内容在此");
//				contentPart.setContent( "咱们开会吧", "text/html;charset=gbk" );
//				multipart.addBodyPart(contentPart);
//				// 添加附件
//				BodyPart messageBodyPart = new MimeBodyPart();
//				DataSource source = new FileDataSource(filePath);
//				// 添加附件的内容
//				messageBodyPart.setDataHandler(new DataHandler(source));
//				// 添加附件的标题
//				// 这里很重要，通过下面的Base64编码的转换可以保证你的中文附件标题名在发送时不会变成乱码
//				sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();
//				messageBodyPart.setFileName("=?GBK?B?"
//						+ enc.encode("fu见".getBytes(Charset.forName("GBK"))) + "?=");
//				multipart.addBodyPart(messageBodyPart);
//				// 将multipart对象放到message中
//				msg.setContent(multipart);
//				msg.saveChanges();
//		
//				//5.发送电子邮件
//				ts.sendMessage(msg, msg.getAllRecipients());
//		
//				//		ts.close();

	}
	public static MimeMessage createSimpleMail(Session session) throws AddressException,MessagingException{
		//创建邮件对象
		MimeMessage mm=new MimeMessage(session);
		//设置发件人
		mm.setFrom(new InternetAddress("azul_test@163.com"));
		//设置收件人
		mm.setRecipient(Message.RecipientType.TO, new InternetAddress("79523601@qq.com"));
		//设置抄送人
		mm.setRecipient(Message.RecipientType.CC, new InternetAddress("1119715806@qq.com"));

		mm.setSubject("第一封JAVA邮件！");

		return mm;

	}
	public String getSmtpHost() {
		return smtpHost;
	}
	public void setSmtpHost(String smtpHost) {
		this.smtpHost = smtpHost;
	}
	public String getSmptPort() {
		return smptPort;
	}
	public void setSmptPort(String smptPort) {
		this.smptPort = smptPort;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRecipients() {
		return recipients;
	}
	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

}
