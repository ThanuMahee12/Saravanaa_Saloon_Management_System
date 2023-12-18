package com.myapp.beandao;

import com.myapp.model.MyOrderlist;
import com.myapp.model.Order;
import com.myapp.model.OrderDetails;
import com.myapp.model.RequestDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;
@Repository
public class OrderDao {
    JdbcTemplate jdbcTem;
    @Autowired
    ServiceDao serviceDao;
    @Autowired
    public void setJdbcTem(JdbcTemplate jdbcTem) {
        this.jdbcTem = jdbcTem;
    }

    public boolean addOrder(Order order){
        try{
            String query="insert into myuserorder(ordercode,date,sercode,uid,payment)values(?,?,?,?,?)";
            return jdbcTem.update(query,order.genordercode(),order.getDate(),order.getService(),order.getUid(),serviceDao.selectById(order.getService()).getServiceamount())>0;

        }catch(Exception ex){
            ex.printStackTrace();
            return false;
        }
    }
    public boolean editOrder(Order order){  try{
        String query="update myuserorder set date=?,sercode=?,status=?,payment=? where ordercode=?";
        String response;
        if(order.isOrderrequest() && order.isOrderResponse()){
            response="Accept";
        }else if(order.isOrderrequest() && !order.isOrderResponse()){
            response="Reject";
        }else{
            response="Cancel";
        }
        return jdbcTem.update(query,
                order.getDate(),
                order.getService(),
                response,
                serviceDao.selectById(order.getService()).getServiceamount(),
                order.getOrderCode())>0;

    }catch(Exception ex){
        ex.printStackTrace();
        return false;
    }
    }
    public boolean ChangeStatus(String id,String Staus){  try{
        String query="update myuserorder set  status=? where ordercode=?";
        return jdbcTem.update(query,Staus, id)>0;
    }catch(Exception ex){
        ex.printStackTrace();
        return false;
    }
    }
    public boolean deleteOrder(String id){
        try{
            String query="delete from myuserorder where ordercode=?";
            return jdbcTem.update(query,id)>0;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
    public List<OrderDetails> AcceptSelectAll(){
        String query="Select * from myuserorder";
        return jdbcTem.query(query,this::maptoorderDetails);
    }
    public List<RequestDetails> PendingSelectAll(){
        String query="SELECT `myuserorder`.`ordercode` AS `OrderCode`, `myuserorder`.`date` AS `date`, `myuserorder`.`status` AS `Status`, `services`.`name` AS `ServiceName`, `user`.`Firstname` AS `FirstName`, `user`.`Lastname` AS `LastName`, `user`.`ContactNo` AS `Contacts`\n" +
                "FROM `myuserorder` \n" +
                "\tLEFT JOIN `services` ON `myuserorder`.`sercode` = `services`.`code` \n" +
                "\tLEFT JOIN `user` ON `myuserorder`.`uid` = `user`.`uid`\n" +
                "WHERE `myuserorder`.`status` = 'Pending';";
        return jdbcTem.query(query,this::maptorequestDetails);
    }
    private RequestDetails maptorequestDetails(ResultSet rs, int i) {
        RequestDetails requestDetails=new RequestDetails();
        try{
            requestDetails.setOrderCode(rs.getString("OrderCode"));
            requestDetails.setDate(rs.getString("date"));
            requestDetails.setServiceName(rs.getString("ServiceName"));
            requestDetails.setStaus(rs.getString("Status"));
            requestDetails.setFirstName(rs.getString("FirstName"));
            requestDetails.setLastName(rs.getString("LastName"));
            requestDetails.setContactNo(rs.getString("Contacts"));
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return requestDetails;
    }

    private OrderDetails maptoorderDetails(ResultSet rs, int i) {
        OrderDetails orderDetails=new OrderDetails();
        try{
            orderDetails.setOrderCode(rs.getString("ordercode"));
            orderDetails.setDate(rs.getString("date"));
            orderDetails.setServiceid(rs.getString("sercode"));
            orderDetails.setOrderResponse(!(rs.getString("status")=="Reject"));
            orderDetails.setOrderRequest(!(rs.getString("status")=="Cancel"));
            orderDetails.setPayment(rs.getDouble("payment"));
            orderDetails.setUid(rs.getInt("uid"));
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return orderDetails;
    }



    public List<MyOrderlist> SelectByuserId(int id) {
        String query="SELECT * FROM myuserorder where uid=?";
        return jdbcTem.query(query,new Object[]{id},this::mapingtouserorder);
    }

    private MyOrderlist mapingtouserorder(ResultSet rs, int i) {
        MyOrderlist o=new MyOrderlist();
        try {
            o.setOrderCode(rs.getString("ordercode"));
            o.setDate(rs.getString("date"));
            o.setService(rs.getString("sercode"));
            o.setOrderResponse(!(rs.getString("status")=="Reject"));
            o.setOrderrequest(!(rs.getString("status")=="Cancel"));
            o.setPayment(rs.getDouble("payment"));
        }catch(Exception e){
        }
        return o;
    }
    public Order selectById(String code){
        String query="select * from myuserorder where ordercode=?";
        return jdbcTem.queryForObject(query,new Object[]{code},this::maptoorder);
    }

    private Order maptoorder(ResultSet rs, int i) {
        Order o=new Order();
        try{
            o.setOrderCode(rs.getString("ordercode"));
            o.setDate(rs.getString("date"));
            o.setService(rs.getString("sercode"));
            o.setOrderResponse(!(rs.getString("status")=="Reject"));
            o.setOrderrequest(!(rs.getString("status")=="Cancel"));
            o.setPayment(rs.getDouble("payment"));
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return o;
    }
}
