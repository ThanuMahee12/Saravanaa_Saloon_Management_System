package com.myapp.model;

import java.io.Serializable;


public class Chat implements Serializable {
    private int chatid;
    private String message;
    private String reply;
    private int userid;

    public Chat() {
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

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
