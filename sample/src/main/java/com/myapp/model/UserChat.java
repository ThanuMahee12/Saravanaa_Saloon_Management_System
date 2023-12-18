package com.myapp.model;

public class UserChat {
    private int chatid;
    private String message;
    private String reply;
    private User user;

    public UserChat() {
    }

    public int getChatid() {
        return chatid;
    }

    public void setChatid(int chatid) {
        this.chatid = chatid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public User getUserid() {
        return user;
    }

    public void setUserid(User user) {
        this.user= user;
    }
}
