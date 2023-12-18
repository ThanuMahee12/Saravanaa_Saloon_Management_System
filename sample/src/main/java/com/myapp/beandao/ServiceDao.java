package com.myapp.beandao;

import com.myapp.model.Service;
import com.myapp.model.ServiceDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;

@Repository
public class ServiceDao {
    JdbcTemplate jdbcTem;
    @Autowired
    public void setJdbcTem(JdbcTemplate jdbcTem) {
        this.jdbcTem = jdbcTem;
    }
    public boolean addservice(Service service){
        try{
            String query="insert into services(code,name,Description,Amount)values(?,?,?,?)";
            return jdbcTem.update(query,
                    service.gencode(),
                    service.getServicename(),
                    service.getServiceDescription(),
                    service.getServiceamount())>0;
        }catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }
    public boolean editservice(Service service){
        try{
            String query="UPDATE services SET name=?,Description=?,Amount=? Where code=?";
            return jdbcTem.update(query,
                    service.getServicename(),
                    service.getServiceDescription(),
                    service.getServiceamount(),
                    service.getServicecode())>0;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
    public boolean deleteservice(String code){
        try{
            String query="delete from services where code=?";
            return jdbcTem.update(query,code)>0;
        }catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }
    public List<ServiceDetails> SelectAll(){
        String query="Select * from services";
        return jdbcTem.query(query,this::maptoServiceDetails);
    }

    private ServiceDetails maptoServiceDetails(ResultSet resultSet, int i) {
        ServiceDetails serviceDetails=new ServiceDetails();
        try {
            serviceDetails.setServicecode(resultSet.getString("code"));
            serviceDetails.setServicename(resultSet.getString("name"));
            serviceDetails.setServiceamount(resultSet.getDouble("Amount"));
            serviceDetails.setServiceDescription(resultSet.getString("Description"));
            serviceDetails.setRatigservice(resultSet.getInt("Rating"));
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
        return serviceDetails;
    }
    private Service maptoService(ResultSet resultSet, int i) {
        Service service=new Service();
        try {
            service.setServicecode(resultSet.getString("code"));
            service.setServicename(resultSet.getString("name"));
            service.setServiceamount(resultSet.getDouble("Amount"));
            service.setServiceDescription(resultSet.getString("Description"));
            service.setRatigservice(resultSet.getInt("Rating"));
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
        return service;
    }
    public Service selectById(String id){
        String query="Select * from services where code=?";
        return jdbcTem.queryForObject(query,new Object[]{id},this::maptoService);
    }

    public int getNextId() {

        String query = "SELECT code FROM service ORDER BY code DESC LIMIT 1";

        int index = 0;
        try {
            index = jdbcTem.queryForObject(query, new Object[]{"paramValue"}, Integer.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return index;
    }
}
