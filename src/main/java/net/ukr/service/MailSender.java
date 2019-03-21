package net.ukr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSender {
    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String username;

    public  void send(String emailTo, String subject, String message){
        SimpleMailMessage mailMessage = new SimpleMailMessage();

//        заповняєм mailMessage інформацією
        mailMessage.setFrom(username);    // від кого
        mailMessage.setTo(emailTo);       // куда (адрессат)
        mailMessage.setSubject(subject);  // тема листа
        mailMessage.setText(message);     // тіло листа

        mailSender.send(mailMessage);
    }
}
