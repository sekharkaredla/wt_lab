
//https://www.google.com/settings/security/lesssecureapps : go to this link and turnon
import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
  
public class Java_mail {  
 public static void main(String[] args) {  
  
  String host="smtp.gmail.com";  
  final String user="from@gmail.com";//change accordingly  
  final String password="123456";//change accordingly  
    
  String to="to@gmail.com";//change accordingly  
  
   //Get the session object  
   Properties props = new Properties();  
   props.put("mail.smtp.host",host);  
   props.put("mail.smtp.auth", "true"); 
   props.put("mail.smtp.starttls.enable","true"); 
     System.out.println("props");
   Session session = Session.getDefaultInstance(props,  
    new javax.mail.Authenticator() {  
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(user,password);  
      }  
    });  
  System.out.println("auth");
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
     message.setSubject("javatpoint");  
     message.setText("This is simple program of sending email using JavaMail API");  
       
    //send the message  
     System.out.println("mime");
     Transport.send(message);  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
 }  
}
