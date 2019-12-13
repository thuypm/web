/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import web.DAO.productDAO;
import com.google.gson.Gson;
import config.ProductData;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MINH THUY
 */
@WebServlet(name = "productController", urlPatterns = {"/productController"})
public class productController extends HttpServlet {

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
             Gson gson = new Gson();
        response.setCharacterEncoding("UTF-8");
     PrintWriter out = response.getWriter();
        String params = request.getRequestURI();
        
     if(params.equals("/product/getAllProduct")) //lấy thông tin tất cả SP
     {
         ProductData listProduct [] = new productDAO().getAllProduct();
  
         out.print(gson.toJson(listProduct));
     };
     if(params.equals("/product/getAllCategory")) // lấy thông tin tất cả category
     {
          String  [] arrayCategory = new productDAO().getAllCatgory();
         out.print(gson.toJson(arrayCategory));
     };
     if(params.indexOf("getByCategory") != -1) // lấy tất cả SP theo category
     {
          String category = params.replaceAll("/product/getByCategory/", "");
          ProductData listProduct []  = new productDAO().getProductbyCategory(category);
          out.print(gson.toJson(listProduct));
     };
     
      if(params.indexOf("productInfo") != -1)  //xem chi tiết sản phẩm
     {
          String productID = params.replaceAll("/product/productInfo/", "");
          ProductData product  = new productDAO().getProductInfo(productID);
          out.print(gson.toJson(product));
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
