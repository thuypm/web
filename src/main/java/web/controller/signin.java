/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import web.model.userModel;
import com.google.gson.Gson;
import config.UserData;
import config.readJson;
import java.io.IOException;
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

//@WebServlet(urlPartern)
public class signin extends HttpServlet {
  public class userSignin{
                public String username;
                public String password;
                    };

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
 RequestDispatcher dispatcher;
 HttpSession httpSession = request.getSession();
 Object obj = httpSession.getAttribute("user");
 if(obj == null)
 {
     dispatcher= request.getRequestDispatcher("/signin.jsp");
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
//        processRequest(request, response);

 String userData = new readJson(request, response).readDataJson();    
Gson gson = new Gson();
userSignin userDataCLi = gson.fromJson(userData, userSignin.class);
HttpSession session = request.getSession();
UserData  user = new userModel().checkUser(userDataCLi.username, userDataCLi.password);
 response.setContentType("text/html;charset=UTF-8");
 response.setCharacterEncoding("UTF-8");
 PrintWriter out = response.getWriter();
if(user != null)
{
    String res = gson.toJson(user);
   session.setAttribute("user", res);
   out.print(res);
}
else
    out.print(false);
        
    
    





//out.print(UserData.username);
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
