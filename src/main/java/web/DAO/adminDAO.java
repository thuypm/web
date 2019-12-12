/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.DAO;

import com.google.gson.Gson;
import config.Bill;
import config.DataCart;
import config.OrderJson;
import web.db.connectDB;
import config.ProductData;
import config.ProductInCart;
import config.UserData;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author MINH THUY
 */
public class adminDAO {
     connectDB conn = new connectDB();
        Statement stmt = conn.getConnect();
     public ProductData [] getAllProduct()
        {
            try{
                // chạy query data base.
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM product ");
                r.next();
                //đếm số hàng
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT * FROM product");
                //khởi tạo số phần tử mảng sản phẩm
                ProductData [] arrayProduct = new ProductData[count];
                for( int i = 0; i< count; i++)
                { 
                    arrayProduct[i] = new ProductData();
                    if(rs.next())
                    {
                         arrayProduct[i] .setProductID(rs.getString("productID"));
                         arrayProduct[i] .setName(rs.getString("name"));
                         arrayProduct[i] .setCategory(rs.getString("category"));
                         arrayProduct[i] .setPrice(rs.getInt("price"));
                         arrayProduct[i] .setAmount(rs.getInt("amount"));
                         arrayProduct[i] .setDateCreate(rs.getLong("dateCreate"));
                         arrayProduct[i] .setDescription(rs.getString("description"));
                          arrayProduct[i].status = rs.getInt("status");
                    }
                }
                //trả về mảng sản phẩm
                return arrayProduct;
                
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
        }
    public int addProduct(ProductData product)
    {
        //thêm sản phẩm từ phía admin.
          try{
              //query insert
              int rs  = stmt.executeUpdate("INSERT INTO product (productID,name,category,amount,price, dateCreate, description ) VALUES(N'"
       +product.getProductID()+"',N'"  +product.getName()+"',N'" +product.getCategory()+"','"
                      +product.getAmount()+"','" +product.getPrice()+"','" +product.getDateCreate()+"',N'"+product.getDescription()+"')");
             return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }
    public int editProduct(ProductData product)
    {
        //chỉnh sửa sản phẩm
           try{
              int rs  = stmt.executeUpdate("UPDATE product SET name = N'" + product.getName()+ "', category= N'"
               + product.getCategory()+ "', status= "
               + product.status+", price =" + product.price+ ", amount= '" + product.getAmount()+ "', description= N'" + product.getDescription()+ "' where productID ='" + product.getProductID()+ "'");
                return rs; // trả về số hàng update
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }
        public int deleteProduct(String productID)
    {
        //xóa 1 sản phẩm 
           try{
              int rs  = stmt.executeUpdate("Update product SET status = 0 where productID = '" + productID+"'");
                return rs; //trả về số hàng bị xóa
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }
        public OrderJson [] getAllBill(int value)
        {
            try {
                 ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM [bill] where status = " + value+""); 
                  r.next();
                int count = r.getInt("rowcount");
                OrderJson [] listBill= new OrderJson [count];
            //     public class OrderJson{
            //         public String billID;
            //      public String username;
            //      public String phone;
            //      public String adress;
            //    public ProductInCart[] listProduct;
            //  }
                ResultSet rs  = stmt.executeQuery("SELECT [bill].billID, user_bill.username, phone, adress  FROM [bill], user_bill "
                        + "where [bill].username = user_bill.username and status =" + value);
                    for(int i = 0; i<count; i++)
                    {
                        rs.next();
                        listBill[i] = new OrderJson();
                        listBill[i].billID = rs.getString("billID");
                        listBill[i].username = rs.getString("username");
                        listBill[i].phone = rs.getString("phone");
                        listBill[i].adress = rs.getString("adress");
                        
                    };
                    return listBill; //trả về mảng các đối tượng orderjson
            } catch (Exception e) {
                System.out.println(e);
                return null;
            }
            
        }
   


    public ProductInCart[] getProductInBillJson(String billID) {
                   try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM [order] where "
                        + " [order].billID ='" + billID+"'" );
                r.next();
                int count = r.getInt("rowcount");
                // public class ProductInCart extends ProductData{
                //     public int numOfProduct;
                
                //     public int getNumOfProduct() {
                //         return numOfProduct;
                //     }
                
                //     public void setNumOfProduct(int numOfProduct) {
                //         this.numOfProduct = numOfProduct;
                //     }
                
                  
                    
                // }
                
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
                return listProduct; // trả về mảng các đối tượng là thông tin số lượng, tên sản phẩm trong giỏ hàng
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
   }
 public UserData [] getAllUserInfo()
        {
            try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM [user] ");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT * FROM [user]");
                UserData [] arrayUser = new UserData[count];
                for( int i = 0; i< count; i++)
                { 
                    arrayUser[i] = new UserData();
                    if(rs.next())
                    {
                         arrayUser[i] .setUsername(rs.getString("username"));
                        
                         arrayUser[i] .setAdmin(rs.getBoolean("admin"));
                         arrayUser[i] .setAdress(rs.getString("adress"));
                         arrayUser[i] .setPhone(rs.getString("phone"));
                       
                    }
                }
                return arrayUser; // mảng thông tin các đối tượng user
                
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
        }

    public int confirmOrder(String billID) 
        {
           try{
               //update các đơn hàng đã được đặt hoặc bị bỏ đặt
              int rs  = stmt.executeUpdate("Update bill SET status = 1 where billID = '" + billID+"'");
                return rs; // trả về số hàng được update
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }

    public int setAdmin(String data) {

           try{
               //chuyển 1 người dùng thành admin.
              int rs  = stmt.executeUpdate("Update [user] SET admin = 1 where username = '" + data+"'");
                return rs; //trả về số hàng
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
   
}

    public int deleteUser(String data) {
            try{
                //xóa 1 người dùng
              int rs  = stmt.executeUpdate("Delete from [user] where username = '" + data+"'");
                return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
    }

    public int deleteOrder(String data) {
               try{
                   //hủy order của khách
              int rs  = stmt.executeUpdate("Delete from [order] where billID = '" + data+"'");
              stmt.executeUpdate("Delete from [user_bill] where billID = '" + data+"'");
              int r  = stmt.executeUpdate("Delete from [bill] where billID = '" + data+"'");
                return rs;
          }
             catch(Exception e){
                 System.out.println(e);
                 return 0;
             }
     }
}
