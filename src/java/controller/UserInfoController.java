/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package controller;

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
public class UserInfoController implements Controller {
    
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        ModelAndView mav = new ModelAndView("userinfo");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Useraccount account;
        UseraccountDAO dao = new UseraccountDAO();
        
        account = dao.checkLogin(username, password);
        
        if (account == null){
            ModelAndView mavEr = new ModelAndView("login");
            mavEr.addObject("errorMsg", "Wrong credential. Register new account?");
            mavEr.addObject("register", "Register");
            return mavEr;
        } else {
            mav.addObject("username", account.getUsername());
            mav.addObject("password", account.getPassword());
            mav.addObject("dob", account.getDob());
            mav.addObject("email", account.getEmail());
            mav.addObject("fullname", account.getFullname());
                                    
            return mav;           
        }
    }
}
