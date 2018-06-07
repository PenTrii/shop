package com.msita.training.dao;

import com.msita.training.entity.Product;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDAO  {


    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<Product> getProducts() {
//        List<Product> lst = getJdbcTemplateObject().query(
//                "SELECT * FROM product", new RowMapper<Product>() {
//                    @Override
//                    public Product mapRow(ResultSet resultSet, int i) throws SQLException {
//                            Product product = new Product();
//                            product.setIdp(resultSet.getString("Idp"));
//                            product.setDescription(resultSet.getString("description"));
//                            product.setTitle(resultSet.getString("title"));
//                            product.setImage(resultSet.getString("image"));
//                            product.setPrice(resultSet.getString("price"));
//                            return product;
//                    }
//                }
//        );
//        return lst;
        return (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class).list();
    }
    @Transactional
    public Product getProduct(int id) {
        return (Product) sessionFactory.getCurrentSession().get(com.msita.training.entity.Product.class, id);
    }
}
