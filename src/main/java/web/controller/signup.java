/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import web.controller.signin.userSignin;
import web.model.userModel;
import com.google.gson.Gson;
import config.UserData;
import config.readJson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MINH THUY
 */
public class signup extends HttpServlet {

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
             response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher dispatcher;
            HttpSession httpSession = request.getSession();
            Object obj = httpSession.getAttribute("user");
           if(obj == null)
 {
     dispatcher= request.getRequestDispatcher("/signup.jsp");
      if (dispatcher != null)
            dispatcher.forward(request, response);
 }
 else
     response.sendRedirect("/");
                    
    
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

 String userData = new readJson(request, response).readDataJson();
Gson gson = new Gson();
UserData userDataCLi = gson.fromJson(userData, UserData.class);
userModel usr = new userModel();
UserData  user = usr.getUser(userDataCLi.getUsername());
 response.setContentType("application/json");
 response.setCharacterEncoding("UTF-8");
 PrintWriter out = response.getWriter();
if(user != null)
{      
    System.err.println(user.getUsername());
        out.print(false);
}
else
{
    out.print(usr.addUser(userDataCLi));
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
