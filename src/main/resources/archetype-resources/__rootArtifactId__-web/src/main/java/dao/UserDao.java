#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.dao;

import ${package}.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class UserDao {
    @Autowired
    private SessionFactory sessionFactory;

    public <T> void save(T t) {
        getSession().save(t);
    }

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public <T> List<T> findAll(Class<T> type) {
        return getSession().createCriteria(type).list();
    }

    public <T> List<T> get(Class<T> type, T t) {
        return getSession().createCriteria(type).add(Example.create(t)).list();
    }

    public <T> T delete(Class<T> type, Serializable id) {
        T obj = (T) getSession().get(type, id);
        getSession().delete(obj);
        return obj;
    }
}
