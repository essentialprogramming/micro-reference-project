package com.templates;

public interface EmailService {

    void sendMail(String recipient, String subject, String htmlContent);
}
