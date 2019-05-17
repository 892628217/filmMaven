package com.lee.film.utils;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @author
 * @create 2019-04-16 15:36
 */
public class SendUtils {

    public static void sendMail(String email, String emailMsg)
            throws AddressException, MessagingException {
        // 1.创建一个程序与邮件服务器会话对象 Session

        Properties props = new Properties();
        //设置发送的协议
//        props.setProperty("mail.transport.protocol", "SMTP");

        //设置发送邮件的服务器
        props.setProperty("mail.host", "smtp.qq.com");
        props.setProperty("mail.smtp.auth", "true");// 指定验证为true

        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");



        // 创建验证器
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                //设置发送人的帐号和密码
//				return new PasswordAuthentication("root@store.com", "root");
                return new PasswordAuthentication("892628217@qq.com", "bpxufdeisdckbbbc");
            }
        };

        Session session = Session.getInstance(props, auth);

        // 2.创建一个Message，它相当于是邮件内容
        Message message = new MimeMessage(session);

        //设置发送者
//		message.setFrom(new InternetAddress("root@store.com"));
        message.setFrom(new InternetAddress("892628217@qq.com"));

        //设置发送方式与接收者
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(email));

        //设置邮件主题
        message.setSubject("跑腿反馈");
        // message.setText("这是一封激活邮件，请<a href='#'>点击</a>");
//		${pageContext.request.contextPath}/user/regist.do
        String url="http://localhost:8080/user/active.do?code="+emailMsg;
//        String content="<h1>来自校园跑腿的反馈邮件!激活请点击以下链接!</h1><h3><a href='"+url+"'>"+url+"</a></h3>";
        String content="<h1>来自校园跑腿的反馈邮件!</h1>";
        //设置邮件内容
        message.setContent(content, "text/html;charset=utf-8");

        // 3.创建 Transport用于将邮件发送
        Transport.send(message);
    }

    public static void getMail(String email, String emailMsg)
            throws AddressException, MessagingException {
        // 1.创建一个程序与邮件服务器会话对象 Session

        Properties props = new Properties();
        //设置发送的协议
//        props.setProperty("mail.transport.protocol", "SMTP");

        //设置发送邮件的服务器
        props.setProperty("mail.host", "smtp.qq.com");
        props.setProperty("mail.smtp.auth", "true");// 指定验证为true

        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");



        // 创建验证器
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                //设置发送人的帐号和密码
//				return new PasswordAuthentication("root@store.com", "root");
                return new PasswordAuthentication("892628217@qq.com", "bpxufdeisdckbbbc");
            }
        };

        Session session = Session.getInstance(props, auth);

        // 2.创建一个Message，它相当于是邮件内容
        Message message = new MimeMessage(session);

        //设置发送者
//		message.setFrom(new InternetAddress("root@store.com"));
        message.setFrom(new InternetAddress("892628217@qq.com"));

        //设置发送方式与接收者
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(email));

        //设置邮件主题
        message.setSubject("跑腿反馈");
        // message.setText("这是一封激活邮件，请<a href='#'>点击</a>");
//		${pageContext.request.contextPath}/user/regist.do
        String url="http://localhost:8080/user/active.do?code="+emailMsg;
//        String content="<h1>来自校园跑腿的反馈邮件!激活请点击以下链接!</h1><h3><a href='"+url+"'>"+url+"</a></h3>";
        String content="<h1>来自校园跑腿的反馈邮件!</h1>"+emailMsg;
        //设置邮件内容
        message.setContent(content, "text/html;charset=utf-8");

        // 3.创建 Transport用于将邮件发送
        Transport.send(message);
    }
}
