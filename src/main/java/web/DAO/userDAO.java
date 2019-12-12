/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.DAO;

/**
 *
 * @author MINH THUY
 */
import web.db.connectDB;
import config.DataCart;
import config.OrderJson;
import config.ProductData;
import config.ProductInCart;
import java.sql.Statement;
import java.sql.ResultSet;
import config.UserData;
import java.sql.PreparedStatement;

/**
 *
 * @author MINH THUY
 */

public class userDAO {
    
        connectDB conn = new connectDB();
        Statement stmt = conn.getConnect();
   
      public UserData getUser(String username) //lấy thông tin người dùng
      {
              UserData user = new UserData();
         
          try{
              ResultSet rs  = stmt.executeQuery("SELECT * FROM [user] WHERE (username = '" + username +"')"  );
              if(rs.next())
              {
                 
                   user.setUsername(rs.getString("username").replaceAll(" ", ""));
                   user.setPassword(rs.getString("password").replaceAll(" ", ""));
                   user.setAdmin(rs.getBoolean("admin"));
                   user.setAdress(rs.getString("adress"));
                   user.setPhone(rs.getString("phone"));
              
              }
              else
                  user = null;
                  }
             catch(Exception e){
                 System.out.println(e);
             };
             
             return user; //trả về thông tin chi tiết của 1 user
               
};
      public int addUser( UserData userForm)// thêm người dùng mới
      {
          try{
              int rs  = stmt.executeUpdate("INSERT INTO [user] (username,password,admin,adress,phone ) VALUES('"
       +userForm.getUsername() +"',N'"  +userForm.getPassword()+"','0',N'" +userForm.getAdress()+"','" +userForm.getPhone()+"')");
             return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
            //thêm 1 user vào database
      }

    public ProductInCart[] getCart(String username) { //thông tin toàn bộ giỏ hàng
       try {
            ResultSet r  = stmt.executeQuery("SELECT COUNT(*)  AS [rowcount] FROM cart, product WHERE cart.productID = product.productID and cart.username ='" + username+"'");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT *  FROM cart, product WHERE cart.productID = product.productID and cart.username ='" + username+"'");
                ProductInCart [] arrayProduct = new ProductInCart[count];
                for( int i = 0; i< count; i++)
                { 
                    arrayProduct[i] = new ProductInCart();
                    if(rs.next())
                    {
                        arrayProduct[i] .setNumOfProduct(rs.getInt("numOfProduct"));
                         arrayProduct[i] .setProductID(rs.getString("productID"));
                         arrayProduct[i] .setName(rs.getString("name"));
                         arrayProduct[i] .setCategory(rs.getString("category"));
                         arrayProduct[i] .setPrice(rs.getInt("price"));
                         arrayProduct[i] .setAmount(rs.getInt("amount"));
                         arrayProduct[i] .setDateCreate(rs.getInt("dateCreate"));
                         arrayProduct[i] .setDescription(rs.getString("description"));
                    }
                }
                return arrayProduct; //trả về mảng thông tin chi tiết của sản phẩm trong giỏ hàng của user
                
        } catch (Exception e) {
            System.err.println(e);
            return null;
        }
    }
    public int getNumOfCart(String username)//lấy số lượng sản phẩm trong giỏ hàng
    {
        try {
             ResultSet r  = stmt.executeQuery("SELECT SUM(numOfProduct) AS [numOfProduct] FROM cart WHERE username ='" + username+"'");
                r.next();
                int count = r.getInt("numOfProduct");
                return count;
        } catch (Exception e) {
            return 0;
        }
        
    }
    public DataCart [] getCartTable(String username){ //lấy thông tin rút gọn của giỏ hàng 
            try {
            ResultSet r  = stmt.executeQuery("SELECT COUNT(*)  AS [rowcount] FROM cart, product WHERE cart.productID = product.productID and cart.username ='" + username+"'");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT *  FROM cart, product WHERE cart.productID = product.productID and cart.username ='" + username+"'");
                DataCart [] arrayProduct = new DataCart[count];
                for( int i = 0; i< count; i++)
                { 
                    arrayProduct[i] = new DataCart();
                    if(rs.next())
                    {
                        arrayProduct[i].numOfProduct = rs.getInt("numOfProduct");
                         arrayProduct[i].username = rs.getString("username");
                         arrayProduct[i].productID = (rs.getString("productID"));
                       
                    }
                }
                return arrayProduct;
                
          
//             ResultSet r  = stmt.executeQuery("SELECT *  FROM cart, product WHERE cart.productID = product.productID and cart.username ='" + username+"'");
//                r.next();
//                int count = r.getInt("numOfProduct");
//                return count;
        } catch (Exception e) {
            System.err.println(e);
            return null;
        }
    }
    
    public boolean checkInCart(String username, String productID){
         //check thông tin SP trong giiỏ hàng có tồn tạiko
        try {
             ResultSet r  = stmt.executeQuery("SELECT * FROM cart WHERE username ='" + username+"' and productID ='" + productID+"'");
               if(r.next())
               {
                   
                   return true;
               }
               else 
                   return false;
               
        } catch (Exception e) {
            System.err.println(e);
            return false;
        }
    }
    
    public int addToCart(String username, String productID, int numOfProduct) // thêm vào giỏ hàng nếu chưa có
    {
               try{
              int rs  = stmt.executeUpdate("INSERT INTO cart (username,productID,numOfProduct) VALUES('"+
       username+"','"  +productID+"'," +numOfProduct+")");
           
             return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    };
     public int updateCart(String username, String productID, int numOfProduct ) 
     //cập nhật nếu giỏ hàng đã có
    {
          try
          {
              int rs  = stmt.executeUpdate("UPDATE cart SET numOfProduct = numOfProduct + " + numOfProduct+ " where username='"
               + username+ "' and productID = '" + productID +"'");
               return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    };
        public int deleteFromCart(String username, String productID)
        //xóa SP khỏi giỏ hàng
    {
          try
          {
              int rs  = stmt.executeUpdate("DELETE From cart where username='"
               + username+ "' and productID = '" + productID +"'");
               return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    };
           public int createOrderUser(UserData user)
           // tạo ra mã Order
    {
               try{
                 
                   int billID = 0;
                  ResultSet rs = stmt.executeQuery("INSERT INTO bill(username) OUTPUT Inserted.billID  VALUES('" + user.getUsername() +"')");
                  if(rs.next())
                    billID = rs.getInt("billID");
                  
              int r = stmt.executeUpdate("INSERT INTO user_bill (username, phone, adress, billID) VALUES('"+
               user.getUsername()+"','"  +user.getPhone()+"',N'" +user.getAdress()+"',' "+  billID+ "')");
              return billID;
              
          
           
      
          }
             catch(Exception e){
                 System.out.println(e);
                 return -1;
             }
    };
           public int addToOrder(int billID, DataCart data)
           // thêm thông tin vào Order
           {
                 try{
 
              int r = stmt.executeUpdate("INSERT INTO [order](billID, username, productID, numOfProduct) VALUES('"+
               billID+"','"  +data.username+"','" +data.productID+"',' "+ data.numOfProduct+ "')");
              return billID;
              
          
           
      
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
           }
       public OrderJson [] getUserBill(String username, int status) 
       //Lấy thông tin Order với trạng thái 1: đã đặt; 0: đã giao, -1: đã hủy
        {
            try {
                 ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM [bill] where username ='"+username+"' and status = " + status+""); 
                  r.next();
                int count = r.getInt("rowcount");
                OrderJson [] listBill= new OrderJson [count];
                ResultSet rs  = stmt.executeQuery("SELECT [bill].billID, user_bill.username, phone, adress  FROM [bill], user_bill "
                        + "where [bill].username = user_bill.username and status =" + status+ " and bill.username ='"+username+"' ");
                    for(int i = 0; i<count; i++)
                    {
                        rs.next();
                        listBill[i] = new OrderJson();
                        listBill[i].billID = rs.getString("billID");
                        listBill[i].username = rs.getString("username");
                        listBill[i].phone = rs.getString("phone");
                        listBill[i].adress = rs.getString("adress");
                        
                    };
                    return listBill;
            } catch (Exception e) {
                System.out.println(e);
                return null;
            }
            
        }
   


    public ProductInCart[] getProductInBillJson(String billID) { 
        //lấy SP trong order
                   try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM [order] where "
                        + " [order].billID ='" + billID+"'" );
                r.next();
                int count = r.getInt("rowcount");
                       ProductInCart [] listProduct = new ProductInCart[count];
              ResultSet rs  = stmt.executeQuery("SELECT [order].productID,name,numOfProduct,price  FROM [order], product where "
                        + " [order].productID = product.productID and [order].billID ='" + billID+"'");
              for(int i =0; i<count; i++)
                  if(rs.next())
                  {
                      listProduct[i] = new ProductInCart();
                       listProduct[i].productID = rs.getString("productID");
                       listProduct[i].name = rs.getString("name");
                       listProduct[i].numOfProduct = rs.getInt("numOfProduct");
                        listProduct[i].price = rs.getInt("price");
                    
                  };
                return listProduct;
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
   }

    public int cancelOrder(String data) { 
        //hủy đơn hàng
            {
           try{
              int rs  = stmt.executeUpdate("Update bill SET status = -1 where billID = '" + data+"'");
                return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }}

    public int updateUser(UserData userForm) //cập nhật thông tin người dùng
            {
          try{
              
              int rs  = stmt.executeUpdate("Update [user] SET password = N'" +userForm.getPassword() +"', phone = '"
                      + userForm.getPhone() +"', adress= N'" +userForm.getAdress()+"' where username = '" + userForm.getUsername()+"'");
             return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
            
      }
 
    
 
}

