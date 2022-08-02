package com.example.taskmanagementsystem;

import com.example.entities.Task;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class TaskController {

    @Autowired(required = false)
    UserRepository userRepository;

    @RequestMapping("/")
    public String mainPage() {

        return "login.html";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String loginUser(HttpServletRequest request) {

        String location= "redirect:/";
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        List<User> users = (List<User>) userRepository.findAll();

        for(int i=0; i< users.size();i++){
            if(users.get(i).getPassword().equals(password) && users.get(i).getUserName().equals(userName) ){
                location= "home.jsp";
            }
        }
        System.out.println("email " + userName + " password " + password);
        return location;
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String registerUser(String userName, String password) {

        ModelAndView mv = new ModelAndView();
        User user = new User();

        user.setUserName(userName);
        user.setPassword(password);

        userRepository.save(user);
//        mv.setViewName("login.html");
        return "redirect:/";

    }

    @RequestMapping(value = "addTask", method = RequestMethod.POST)
    public ModelAndView addTask(Task task, HttpServletRequest request) throws ParseException {


        String deadlineStr = request.getParameter("deadLine");
        Date deadlineDate=new SimpleDateFormat("dd-MM-yyyy").parse(deadlineStr);
        task.setDeadLineDate(deadlineDate);


        System.out.println("NAME " + task.getTaskName() + "  lEVEL: " + task.getPriority() + "  desc: " + task.getDescription()+" date: "+deadlineStr);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/");
        return mv;
    }


}
