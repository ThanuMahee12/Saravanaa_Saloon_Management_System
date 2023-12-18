package com.myapp.beandao;

import com.myapp.model.Chat;
import com.myapp.model.OneChat;
import com.myapp.model.UserChat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;

@Repository
public class ChatDao {
    JdbcTemplate jdbcTemp;
    @Autowired
    UserDao userDao;
    @Autowired
    public void setJdbcTemp(JdbcTemplate jdbcTemp) {
        this.jdbcTemp = jdbcTemp;
    }
    public boolean sendmessage(Chat chat){
        try{
            String query="insert into chat (userid,message)values(?,?)";
            return jdbcTemp.update(query,chat.getUserid(),chat.getMessage())>0;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public boolean replymessage(Chat chat){
        try{
            String query="update chat Set reply=?where zid=?";
            return jdbcTemp.update(query,chat.getReply(),chat.getChatid())>0;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public List<OneChat> userchatAll(int userid){
        String query="Select * from chat where userid=?";
        return jdbcTemp.query(query,new Object[]{userid},this::maptochat);
    }

    private OneChat maptochat(ResultSet rs, int i) {
        OneChat chat=new OneChat();
        try{
           chat.setMessage(rs.getString("message"));
            chat.setReply(rs.getString("reply"));
            chat.setZid(rs.getInt("zid"));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        return chat;
    }

    public List<UserChat> selecAll() {
        String query="Select * from chat ORDER BY zid DESC Limit 50 ";
        return jdbcTemp.query(query,this::maptoallchat);
    }

    private UserChat maptoallchat(ResultSet rs, int i) {
        UserChat chat=new UserChat();
        try{
            chat.setMessage(rs.getString("message"));
            chat.setReply(rs.getString("reply"));
            chat.setChatid(rs.getInt("zid"));
            chat.setUserid(userDao.getUserByid(rs.getInt("userid")));
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        return chat;
    }
}
