package com.myapp.model;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
    private String OrderCode;
    private String serviceid;
    private String date;
    private int uid;
    private boolean orderResponse;
    private boolean orderRequest;
    private double payment;
    public Order() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getOrderCode() {
        return OrderCode;
    }

    public void setOrderCode(String orderCode) {
        OrderCode = orderCode;
    }

    public String getService() {
        return serviceid;
    }

    public void setService(String service) {
        this.serviceid = service;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }

    public boolean isOrderResponse() {
        return orderResponse;
    }

    public void setOrderResponse(boolean orderResponse) {
        this.orderResponse = orderResponse;
    }

    public boolean isOrderrequest() {
        return orderRequest;
    }

    public void setOrderrequest(boolean orderrequest) {
        this.orderRequest = orderrequest;
    }
    public String genordercode(){
        double randnum=Math.random()*100;
        Date d=new Date();
        return String.format("%d-%d-%d",d.getDate(),d.getMonth(),(int)randnum);
    }
}
