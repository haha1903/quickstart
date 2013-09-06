#set($symbol_pound='#')
        #set($symbol_dollar='$')
        #set($symbol_escape='\' )
        package ${package};

import ${package}.model.User;
import com.mysql.jdbc.Driver;
import junit.framework.Assert;
import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

import java.util.List;

import static junit.framework.Assert.assertNotNull;

/**
 * User: changhai
 * Date: 13-8-15
 * Time: 下午4:12
 * DataYes
 */
public class DatayesTest {
    @Test
    public void testLoadContext() throws Exception {
        ApplicationContext context = new ClassPathXmlApplicationContext("context/${rootArtifactId}-beans.xml");
        assertNotNull(context);
    }

    @Test
    public void testDao() throws Exception {
        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUsername("root");
        dataSource.setPassword("");
        dataSource.setDriverClassName(Driver.class.getName());
        dataSource.setUrl("jdbc:mysql://localhost/${rootArtifactId}");
        localSessionFactoryBean.setDataSource(dataSource);
        localSessionFactoryBean.setPackagesToScan("${package}.model");
        localSessionFactoryBean.afterPropertiesSet();
        SessionFactory sessionFactory = localSessionFactoryBean.getObject();
        Session session = sessionFactory.openSession();
        User user = new User();
        user.setName("name");
        user.setPassword("password");
        session.save(user);
        session.flush();
        session.close();
    }
}
