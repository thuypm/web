/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.DAO;

import web.db.connectDB;
import config.ProductData;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author MINH THUY
 */
public class productDAO {
     connectDB conn = new connectDB();
        Statement stmt = conn.getConnect();
     public ProductData [] getAllProduct()
        {
            try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM product where status = 1");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT * FROM product where status = 1");
                // public class ProductData {
                //     public  String productID;
                //     public String name;
                //    public  String category;
                //    public  int price;
                //    public int status;
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
                         arrayProduct[i] .setDateCreate(rs.getInt("dateCreate"));
                         arrayProduct[i] .setDescription(rs.getString("description"));
                    }
                }
                return arrayProduct; // trả về mảng tất cả các sản phẩm
                
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
        }
     public String [] getAllCatgory()
        {
            try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(DISTINCT category) AS [rowcount] FROM product ");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT DISTINCT category FROM product");
                String [] arrayCategory = new String[count];
                for( int i = 0; i< count; i++)
                { 
                   
                    if(rs.next())
                        arrayCategory[i] = rs.getString("category");
                }
                return arrayCategory; //trả về mảng các danh mục sản phẩm
                
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
        }


        public ProductData[] getProductbyCategory(String category) {
             try{
                ResultSet r  = stmt.executeQuery("SELECT COUNT(*) AS [rowcount] FROM product where status = 1 and category = '" + category +"'");
                r.next();
                int count = r.getInt("rowcount");
                ResultSet rs = stmt.executeQuery("SELECT * FROM product where status = 1 and category = '" + category +"'");
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
                         arrayProduct[i] .setDateCreate(rs.getInt("dateCreate"));
                         arrayProduct[i] .setDescription(rs.getString("description"));
                    }
                }
                return arrayProduct;  //trả về mảng các sản phẩm được order theo category
                
          }
             catch(Exception e){
                 System.out.println(e);
                 return null;
             }
        }

    public ProductData getProductInfo(String productID) {
        try {
             ResultSet rs = stmt.executeQuery("SELECT * FROM product where productID = '" + productID +"'");
             if(rs.next())
                    { ProductData product = new ProductData();
                          product.setProductID(rs.getString("productID"));
                         product.setName(rs.getString("name"));
                         product.setCategory(rs.getString("category"));
                         product.setPrice(rs.getInt("price"));
                         product.setAmount(rs.getInt("amount"));
                         product.setDateCreate(rs.getInt("dateCreate"));
                         product.setDescription(rs.getString("description"));
                         return product;
                         //trả về thông tin chi tiết của sản phẩm.
                    }
             else return null;
        } catch (Exception e) {
            return null;
        }
    }
    
}
