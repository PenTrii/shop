package com.msita.training.controller;

import com.msita.training.dao.LoginDAO;
import com.msita.training.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
@RequestMapping("/changePassword")
public class ChangePasswordController {

    @Autowired
    LoginService loginService;

    @RequestMapping(method = RequestMethod.GET)
    public String changePassword() {
        return "changePassword";
    }


    @RequestMapping(value = "authenticate", method = RequestMethod.POST)
    public String updates(@RequestParam("new_password") String n_pass,
                          @RequestParam("current_password") String current_password,
                          @RequestParam("confirm_password") String c_pass,
                          HttpServletRequest request) throws ServletException, IOException {
        String user = (String) request.getSession().getAttribute("username");
        String pass = (String) request.getSession().getAttribute("password");
        String page = "home-page";
        try {
            if (n_pass.equals(c_pass) && pass.equals(current_password)) {
                loginService.updates(n_pass, user);
                page = "home";
            }
            else page = "eror";
        } catch (NullPointerException e) {
            page = "login";
        }
        return "redirect:/"+page;
    }
}
