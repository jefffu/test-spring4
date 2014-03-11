package org.jfu.test.spring4.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"login"})
public class LoginController extends AbstractController {

    @RequestMapping(method={RequestMethod.GET})
    public String getLoginPage() {
        return "login";
    }
}
