package com.msita.training.controller;

import com.msita.training.entity.Product;
import com.msita.training.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private HomeService homeService;

    @RequestMapping(method = RequestMethod.GET)
    public String homePage(ModelMap model, HttpServletRequest request) {
        String change = null;
        String name = null;
        model.addAttribute("listProduct",homeService.getProducts());
        String user = (String) request.getSession().getAttribute("username");
        if (user == null) {
            name = "login";
        }
        else {
            name = "logout";
            change = "Change Password";
        }
        request.getSession().setAttribute("name", name);

        request.getSession().setAttribute("change", change);
        return "home";
    }


}
