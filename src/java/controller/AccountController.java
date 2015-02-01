/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dao.UseraccountDAO;
import model.pojo.Useraccount;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author Pado
 */
public class AccountController implements Controller {
    
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView ("confirmation");
                
        String username, password, email, fullname, dobStr;
        Date dob;
        //get values of request
        username = request.getParameter("username");
        password = request.getParameter("password");
        
        dobStr = request.getParameter("dob");
        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
        dob = d.parse(dobStr);
        
        email = request.getParameter("email");
        fullname = request.getParameter("fullname");
        
        Useraccount account = new Useraccount(username, password, email, dob, fullname);
        UseraccountDAO dao = new UseraccountDAO();
        
        if (dao.checkNewAccount(account)){
            dao.createNewAccount(account);
            //add back to confirmation?????????
            mav.addObject("username", username);
            mav.addObject("password", password);
            mav.addObject("dob", dob);
            mav.addObject("email", email);
            mav.addObject("fullname", fullname);
            return mav;
            
        } else {
            ModelAndView mavReg = new ModelAndView("register");
            mavReg.addObject("username", username);
            mavReg.addObject("password", password);
            mavReg.addObject("dob", dobStr);
            mavReg.addObject("email", email);
            mavReg.addObject("fullname", fullname);
            mavReg.addObject("errorMsg", "Username or/and email is existed!");
            mavReg.addObject("visible", "back");
            
            return mavReg;            
        }
        
    }
    
}
