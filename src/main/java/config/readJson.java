/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MINH THUY
 */
public class readJson { // đọc data gửi lên từ client dưới dạng String
    HttpServletRequest request;
    HttpServletResponse response;

    public readJson(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    };
    public String readDataJson() throws IOException
    {
      String zAPIInputStringP = "";
BufferedReader in = new BufferedReader(new InputStreamReader(
                request.getInputStream()));
String line = in.readLine();
while (line != null) {
    zAPIInputStringP += line;
    line = in.readLine();
};     
return zAPIInputStringP;

    }
}
