package common;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {

	public static boolean send(String receiver, String subject, String content) {
		boolean status=false;
		try {
			
			String from="kuldeepkumar02633@gmail.com";
			String token="oksg bixt pxpz yhmb";
			Properties p= new Properties();
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.ssl.protocols", "TLSv1.2");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.port", 465);
			Authenticator auth=new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(from, token);
				}  
			};
			Session ses=Session.getInstance(p,auth);
			MimeMessage m=new MimeMessage(ses);
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			m.setSubject(subject);
			m.setText(content);			
			InternetAddress add[]=new InternetAddress[1];
			add[0]=new InternetAddress(from);
			m.addFrom(add);
			Transport.send(m);
			status=true;
		} catch (Exception e) {
			System.err.println(e);
			status=false;
		}
		return status;
		
	}
	
}
