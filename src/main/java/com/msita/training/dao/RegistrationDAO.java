package com.msita.training.dao;

import com.msita.training.entity.User;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import javax.xml.crypto.Data;

@Repository
public class RegistrationDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Transactional
    public void registration(String username, String pass, String fullname) {
//        Query query = sessionFactory.getCurrentSession().createQuery
//                            ("insert into training.user () value('"+username+"', '"+pass+"', '"+fullname+"')");

        Session session = this.sessionFactory.getCurrentSession();

        User user = new User();
        user.setUsername(username);
        user.setPassword(pass);
        user.setFullname(fullname);

        session.save(user);
    }
}
