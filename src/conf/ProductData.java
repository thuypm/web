/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

/**
 *
 * @author MINH THUY
 */
public class ProductData {
   public  String productID;
   public String name;
  public  String category;
  public  int price;
  public int status;

    public void setPrice(int price) {
        this.price = price;
    }

    public void setDateCreate(long dateCreate) {
        this.dateCreate = dateCreate;
    }

    public int getPrice() {
        return price;
    }
    int amount;
    long dateCreate;
    String description;

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setDateCreate(int dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProductID() {
        return productID;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public int getAmount() {
        return amount;
    }

    public long getDateCreate() {
        return dateCreate;
    }

    public String getDescription() {
        return description;
    }
    
}
