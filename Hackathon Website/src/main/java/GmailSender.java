
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class GmailSender {
	
	public String getRandom() {
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		return String.format("%06d",number);
	}
	public boolean sendEmail(User user) {
		boolean flag=false;
		String toEmail = user.getEmail();
		String fromEmail = "prathameshkhandekar9191@gmail.com";
		String password = "boum jxtu emed uqlq";
		
		try {
			Properties properties = new Properties();
			properties.put("mail.smtp.auth", true);
			properties.put("mail.smtp.starttls.enable", true);
			properties.put("mail.smtp.port", "587");
			properties.put("mail.smtp.host", "smtp.gmail.com");

			Session session = Session.getInstance(properties, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail,password);
				}
			});
			
			Message message = new MimeMessage(session);
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
			message.setFrom(new InternetAddress(fromEmail));
			message.setSubject("User email verification");
			message.setText("Your verification code is: "+user.getCode());
			Transport.send(message);
			flag=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
	}
}
