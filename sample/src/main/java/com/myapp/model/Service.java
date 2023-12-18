package com.myapp.model;

import java.io.Serializable;

public class Service implements Serializable {
    String servicecode;
    String servicename;
    double serviceamount;
    String ServiceDescription;
    int ratigservice;


    public Service() {
    }

    public String getServicecode() {
        return servicecode;
    }

    public void setServicecode(String servicecode) {
        this.servicecode = servicecode;
    }

    public String getServicename() {
        return servicename;
    }

    public void setServicename(String servicename) {
        this.servicename = servicename;
    }

    public double getServiceamount() {
        return serviceamount;
    }

    public void setServiceamount(double serviceamount) {
        this.serviceamount = serviceamount;
    }

    public String getServiceDescription() {
        return ServiceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        ServiceDescription = serviceDescription;
    }

    public int getRatigservice() {
        return ratigservice;
    }

    public void setRatigservice(int ratigservice) {
        this.ratigservice = ratigservice;
    }

    @Override
    public String toString() {
        return "Service{" +
                "servicecode='" + servicecode + '\'' +
                ", servicename='" + servicename + '\'' +
                ", serviceamount=" + serviceamount +
                ", ServiceDescription='" + ServiceDescription + '\'' +
                ", ratigservice=" + ratigservice +
                '}';
    }
    public String gencode(){
        double randnum=(Math.random()*200)*(Math.random()*100);
        return servicename.substring(0,4)+(int)randnum;
    }
}
