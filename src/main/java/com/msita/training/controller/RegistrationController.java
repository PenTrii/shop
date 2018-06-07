package com.msita.training.controller;

        import com.msita.training.service.RegistrationService;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Controller;
        import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.bind.annotation.RequestMethod;
        import org.springframework.web.bind.annotation.RequestParam;

        import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;

    @RequestMapping(method = RequestMethod.GET)
    public String goToFormRegistration() {
        return "registration";
    }

    @RequestMapping(value="/authenticate",method=RequestMethod.POST)
    public String registration(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("confirm_password") String c_password,
                               @RequestParam("fullname") String fullname,
                               HttpServletRequest request) {
        String page = "login";
        if (password.equals(c_password)) {
            registrationService.registration(username, password, fullname);
            page = "login";
        }
        else page = "error";

        return "redirect:/"+page;
    }
}
