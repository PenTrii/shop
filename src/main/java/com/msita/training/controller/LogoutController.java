package com.msita.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/logout")
public class LogoutController {

    @RequestMapping(method = RequestMethod.GET)
    public String homeLogin(HttpServletRequest request) {
        request.getSession().removeAttribute("username");
        request.getSession().removeAttribute("fullname");
        request.getSession().removeAttribute("cart");
        String user = (String) request.getSession().getAttribute("username");
        if (user == null) {
            return "redirect:/login";
        }
        else
            return "redirect:/eror";
    }

}