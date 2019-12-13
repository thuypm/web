/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import web.model.adminModel;
import web.DAO.adminDAO;
import com.google.gson.Gson;
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

/**
 *
 * @author MINH THUY
 */
public class adminController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
       
    }

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
     
        Gson gson = new Gson(); 
        adminDAO dao = new adminDAO();
        adminModel model = new adminModel();
        response.setCharacterEncoding("UTF-8");
     PrintWriter out = response.getWriter();
        String params = request.getRequestURI(); // lấy đường dẫn mà user gửi request
     if(params.equals("/admin/do/getAllProduct"))// thêm SP
     {
         ProductData listProduct [] = new adminDAO().getAllProduct();
         out.print(gson.toJson(listProduct));
     };
     if(params.equals("/admin/do/getAllOrder")) //lấy thông tin tất cả SP
     {
            OrderJson [] listOrderJson = model.getAllOrder();
         out.print(gson.toJson(listOrderJson));
     };
      if(params.equals("/admin/do/getAllUser")) //lấy thông tin tất cả user
     {
            UserData [] listUser = model.getAllUser();
         out.print(gson.toJson(listUser));
     };
       if(params.equals("/admin/do/getAllOrderChecked")) //lấy thông tin đơn hàng đã xác nhận
     {
            OrderJson [] listOrderJson = model.getAllOrderChecked();
         out.print(gson.toJson(listOrderJson));
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
         request.setCharacterEncoding("UTF-8");
        String data = new readJson(request, response).readDataJson();    // đọc Json client gửi lên
        Gson gson = new Gson();
        adminDAO ad = new adminDAO();
        response.setCharacterEncoding("UTF-8");
     PrintWriter out = response.getWriter();
        String params = request.getRequestURI();
     if(params.equals("/admin/do/addProduct")) //thêm sản phẩm mới 
     {
       
          ProductData product = gson.fromJson(data, ProductData.class);
          out.print(ad.addProduct(product));
     };
     if(params.equals("/admin/do/editProduct")) //sửa SP
     { 
        
         ProductData product = gson.fromJson(data, ProductData.class);
         System.err.println(data);
         
         System.err.println(product.status);
          System.err.println(product.name);
          System.err.println(product.price);
          out.print(ad.editProduct(product));
     };
       if(params.equals("/admin/do/deleteProduct"))//xóa SP
     {
          out.print(ad.deleteProduct(data));
     };
          if(params.equals("/admin/do/confirmOrder")) //xác nhận đơn hàng
     {
         out.print(ad.confirmOrder(data));
     };
           if(params.equals("/admin/do/deleteOrder")) //xác nhận đơn hàng
     {
         out.print(ad.deleteOrder(data));
     };
           if(params.equals("/admin/do/setAdmin")) // set quyền admin cho người dùng
     {
         out.print(ad.setAdmin(data));
     };
              if(params.equals("/admin/do/deleteUser")) //xóa người dùng
     {
         out.print(ad.deleteUser(data));
     };
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
