package org.jfu.test.spring4.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@Controller
public class TestController extends AbstractController {
    private static Logger logger = LoggerFactory.getLogger(TestController.class);

    @RequestMapping(value={"test"}, method={RequestMethod.GET})
    public String get(Model model) {
        logger.debug("======== Get /test");

        UserService userService = UserServiceFactory.getUserService();
        User user = userService.getCurrentUser();
        if (user != null) {
            model.addAttribute("user", user);
            return "test";
        } else {
            return "redirect:" + userService.createLoginURL("test");
        }
    }
}
