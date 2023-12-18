package com.myapp.model;

import java.io.Serializable;

public class OneChat implements Serializable {
    private String message;
    private String reply;
    private int zid;

    public OneChat() {
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

    public int getZid() {
        return zid;
    }

    public void setZid(int zid) {
        this.zid = zid;
    }
}
