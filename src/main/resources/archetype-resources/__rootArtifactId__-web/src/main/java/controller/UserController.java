#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.controller;

import ${package}.exception.DatayesException;
import ${package}.model.User;
import ${package}.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        return "redirect:index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "signup";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup() {
        return "signup";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public void signup(@RequestBody User user) throws Exception {
        userService.create(user);
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(@RequestBody User user, Map<String, Object> model) {
        if (userService.check(user)) {
            model.put("success", "true");
        } else {
            model.put("message", "login failure");
        }
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String users(Map<String, Object> model) {
        List<User> users = userService.getAll();
        model.put("users", users);
        return "users";
    }

    @RequestMapping(value = "/user", method = RequestMethod.DELETE)
    public void deleteUser(long id, Map<String, Object> model) {
        User user = userService.delete(id);
        model.put("user", user);
    }

    @ExceptionHandler(DatayesException.class)
    @ResponseBody
    public Map exceptionHandler(HttpServletResponse response, DatayesException e) {
        response.setStatus(500);
        Map model = new HashMap();
        model.put("message", e.getMessage());
        return model;
    }
}
