#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.service;

import ${package}.dao.UserDao;
import ${package}.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {
    @Autowired
    private UserDao userDao;

    public void create(User user) {
        userDao.save(user);
    }

    public List<User> getAll() {
        return userDao.findAll(User.class);
    }

    public boolean check(User user) {
        List<User> users = userDao.get(User.class, user);
        return !users.isEmpty();
    }

    public User delete(long id) {
        return userDao.delete(User.class, id);
    }
}
