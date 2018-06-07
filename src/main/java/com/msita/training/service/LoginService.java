package com.msita.training.service;

import com.msita.training.dao.BaseDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msita.training.dao.LoginDAO;
import com.msita.training.entity.User;

import javax.servlet.ServletException;
import java.io.IOException;
//import java.io.IOException;
//import com.msita.training.vo.User;

@Service
public class LoginService extends BaseDAO {

	@Autowired
	private LoginDAO loginDAO;

	public User login(String username,String pass) {
		User rs=null;
		User user=loginDAO.login(username);
		System.out.println("order size: " + user.getListOrder().size());
		if(user!=null && user.getPassword().equals(pass)) {
			rs=user;
		}
		return rs;
	}
//
	public void updates(String pass, String username) throws ServletException, IOException {
//		String sql = "update user set password = "+pass+" where username = "+username+"";
		loginDAO.updates(pass, username);
	}
}
