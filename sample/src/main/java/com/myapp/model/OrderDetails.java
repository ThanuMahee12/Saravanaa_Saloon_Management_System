package com.myapp.model;

import java.io.Serializable;

public class OrderDetails implements Serializable {
    private String OrderCode;
    private String serviceid;
    private String date;
    private int uid;
    private boolean orderResponse;
    private boolean orderRequest;
    private double payment;

    public String getOrderCode() {
        return OrderCode;
    }

    public void setOrderCode(String orderCode) {
        OrderCode = orderCode;
    }

    public String getServiceid() {
        return serviceid;
    }

    public void setServiceid(String serviceid) {
        this.serviceid = serviceid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public boolean isOrderResponse() {
        return orderResponse;
    }

    public void setOrderResponse(boolean orderResponse) {
        this.orderResponse = orderResponse;
    }

    public boolean isOrderRequest() {
        return orderRequest;
    }

    public void setOrderRequest(boolean orderRequest) {
        this.orderRequest = orderRequest;
    }

    public double getPayment() {
        return payment;
    }

    public void setPayment(double payment) {
        this.payment = payment;
    }
}
