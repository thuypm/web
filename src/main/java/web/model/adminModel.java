/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.model;

import config.Bill;
import config.OrderJson;
import web.DAO.adminDAO;
import config.ProductData;
import config.UserData;

/**
 *
 * @author MINH THUY
 */
public class adminModel {
    
    public int addProduct(ProductData product)
    {
        return new adminDAO().addProduct(product);
    }
     public int editProduct(ProductData product)
    {
        return new adminDAO().editProduct(product);
    }
     public OrderJson[]   getAllOrder() //phải lấy mã order xong gọi query tiếp để lấy toàn bộ SP trong order
     {
         adminDAO dao = new adminDAO();
         OrderJson [] listOrderJson = dao.getAllBill(0);
        
         for(int i = 0; i< listOrderJson.length; i++)
         {
            listOrderJson[i].listProduct = dao.getProductInBillJson(listOrderJson[i].billID);
         }
         return listOrderJson;
     
     }
      public UserData[]   getAllUser()   //hàm quản lý user
     {
         adminDAO dao = new adminDAO();
         UserData [] listUser = dao.getAllUserInfo();
        
     return listUser;
     
     }
      public OrderJson[]   getAllOrderChecked()//phải lấy mã order xong gọi query tiếp để lấy toàn bộ SP trong order
     {
         adminDAO dao = new adminDAO();
         OrderJson [] listOrderJson = dao.getAllBill(1);
        
         for(int i = 0; i< listOrderJson.length; i++)
         {
            listOrderJson[i].listProduct = dao.getProductInBillJson(listOrderJson[i].billID);
         }
         return listOrderJson;
     
     }

}
