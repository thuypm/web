/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import web.DAO.adminDAO;
import web.DAO.userDAO;
import web.model.adminModel;
import com.google.gson.Gson;
import config.DataCart;
import config.OrderData;
import config.OrderJson;
import config.ProductData;
import config.UserData;
import config.readJson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import web.model.userModel;

/**
 *
 * @author MINH THUY
 */
public class userController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         request.setCharacterEncoding("UTF-8");
   userDAO dao = new userDAO();
   userModel model = new userModel();
          Gson gson = new Gson();
        HttpSession session = request.getSession(); // session lwu thông tin người dùng hiện tại
        UserData user = gson.fromJson(session.getAttribute("user").toString(), UserData.class);
        response.setCharacterEncoding("UTF-8");
     PrintWriter out = response.getWriter();
        String params = request.getRequestURI();
        
     if(params.equals("/user/do/getCart")) // lấy thông tin giỏ hàng
     {
       
         ProductData listCart [] = dao.getCart(user.getUsername());
         out.print(gson.toJson(listCart));
     };

 if(params.equals("/user/do/getUser")) //láy thông tin người dùng hiện tại đăng nhập
     {
       
         UserData userRes = dao.getUser(user.getUsername());
         out.print(gson.toJson(userRes));
     };
 if(params.equals("/user/do/getAllOrder")) //lấy thông tin đơn hàng đã đặt
     {
       
         OrderJson [] userRes = model.getAllOrder(user.getUsername(), 0);
         out.print(gson.toJson(userRes));
     };
      if(params.equals("/user/do/getCancelOrder")) //xem đơn hàng đã hủy
     {
       
         OrderJson [] userRes = model.getAllOrder(user.getUsername(), -1);
         out.print(gson.toJson(userRes));
     };
          if(params.equals("/user/do/getDoneOrder")) //xem đơn hàng đã giao thành công
     {
       
         OrderJson [] userRes = model.getAllOrder(user.getUsername(), 1);
         out.print(gson.toJson(userRes));
     };

      if(params.equals("/user/do/signout")) //đăng xuất
     {
         session.invalidate();
         response.sendRedirect("/");
     };
   
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String data = new readJson(request, response).readDataJson();  
          Gson gson = new Gson();
            HttpSession session = request.getSession(false);
         UserData user = gson.fromJson(session.getAttribute("user").toString(), UserData.class);   
          
        
        userModel usrModel = new userModel();
        userDAO DAO = new userDAO();
        response.setCharacterEncoding("UTF-8");
     PrintWriter out = response.getWriter();
        String params = request.getRequestURI();
  
     if(params.equals("/user/do/deleteFromCart")) //xóa SP khỏi giỏ hàng
     {
         ProductData product = gson.fromJson(data, ProductData.class);
        out.print( DAO.deleteFromCart(user.getUsername(), product.getProductID()));
        
     };
       if(params.equals("/user/do/addToCart")) //thêm vào giỏ hàng
     {
           
         DataCart dataCart = gson.fromJson(data, DataCart.class);
         out.print(usrModel.addToCart(user.getUsername(), dataCart.productID, dataCart.numOfProduct));
         
     };
          if(params.equals("/user/do/cancelOrder")) // hủy đơn hàng
     {
          
         out.print(DAO.cancelOrder(data));
         
     };
            if(params.equals("/user/do/updateUser")) // chỉnh sửa thông tin người dùng
     {
          UserData userForm = gson.fromJson(data, UserData.class);
         out.print(DAO.updateUser(userForm));
         
     };
     
       if(params.equals("/user/do/order")) //đặt hàng, phải lấy thông tin rút gọn  giỏ hàng trong CSDL
     {
        ;
         UserData userOrder = gson.fromJson(data, UserData.class);
       ProductData listCart [] = DAO.getCart(user.getUsername());
      int billID = DAO.createOrderUser(user);
      DataCart [] cartData = DAO.getCartTable(user.getUsername());
     
      
       for(DataCart i : cartData)
       {
           DAO.deleteFromCart(user.getUsername(), i.productID);
           DAO.addToOrder(billID, i);
           
       }
         out.print(gson.toJson(true));

     }
       
    }
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
