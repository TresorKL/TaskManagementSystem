package com.example.taskmanagementsystem;

import com.example.entities.User;
import com.example.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.net.http.HttpRequest;

@Controller
public class TaskController {

    @Autowired(required = false)
   UserRepository userRepository;

    @RequestMapping("/")
    public String mainPage() {

        return "login.html";
    }

    @RequestMapping(value="login", method= RequestMethod.POST)
    public String loginUser(String email, String password){
//@RequestParam(value="email", required = false)
//        String email= request.getParameter("email");
//        String password= request.getParameter("userPassword");

        System.out.println("email "+email+" password "+password);
        return "home.jsp";
    }

    @RequestMapping(value="register", method = RequestMethod.POST)
    public String registerUser(String userName, String password) {

//      String userName = request.getParameter("userName");
//      String password = request.getParameter("password");

       ModelAndView mv = new ModelAndView();
        User user = new User();

        user.setUserName(userName);
        user.setPassword(password);

        //System.out.println("USERNAME: "+userName);
      userRepository.save(user);
//        mv.setViewName("login.html");
        return "redirect:login.html";

    }
}
