/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.model;

import config.OrderJson;
import web.DAO.userDAO;
import config.UserData;
import web.DAO.productDAO;

/**
 *
 * @author MINH THUY
 */
public class userModel {
    public userDAO dao = new userDAO();
    
 public UserData getUser(String username)
    {
       return dao.getUser(username);
     
    }
    public UserData checkUser(String username, String password) // check đăng nhập
    {
        UserData user = dao.getUser(username);
        if(user == null)
            return null;
        else
            if((user.getPassword()).equals(password))
                return user;
            else 
            return  null;
    }
    public Boolean addUser(UserData  userForm)
            {
              int update = dao.addUser(userForm);
              if(update == 0)
                       return false;
             else
                  return true;
                
            }
    public int addToCart(String username,String productID,int numOfProduct){
        
        Boolean check = dao.checkInCart(username, productID); // nếu SP đã có trong giỏ hàng thì chỉ thêm số lườnjng chứ ko thêm sp
        if(check)
            return dao.updateCart(username, productID, numOfProduct);
        else 
            return dao.addToCart(username, productID, numOfProduct);
    }
    
         public OrderJson[]   getAllOrder(String username, int status) //lấy mã order trước rồi mới lấy toàn bộ SP trong order
     {
        
         OrderJson [] listOrderJson = dao.getUserBill(username, status);
        
         for(int i = 0; i< listOrderJson.length; i++)
         {
            listOrderJson[i].listProduct = dao.getProductInBillJson(listOrderJson[i].billID);
         }
         return listOrderJson;
     
     }
}
