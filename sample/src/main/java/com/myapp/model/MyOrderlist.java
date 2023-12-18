package com.myapp.model;

public class MyOrderlist {
    private  String orderCode;
    private String date;
    private String service;
    private  boolean orderResponse;
    private  boolean orderrequest;
    private double payment;

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public boolean isOrderResponse() {
        return orderResponse;
    }

    public void setOrderResponse(boolean orderResponse) {
        this.orderResponse = orderResponse;
    }

    public boolean isOrderrequest() {
        return orderrequest;
    }

    public void setOrderrequest(boolean orderrequest) {
        this.orderrequest = orderrequest;
    }

    public void setPayment(double payment) {
    }
}
