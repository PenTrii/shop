package com.msita.training.dao;

import javax.sql.DataSource;

import com.msita.training.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class BaseDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	public DataSource getDataSource() {
		return dataSource;
	}

	LoginService loginService;

	@Autowired
	public void setDataSource(@Qualifier("dataSource") DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(this.dataSource);
	}
	public JdbcTemplate getJdbcTemplateObject() {
		return jdbcTemplateObject;
	}
	public void setJdbcTemplateObject(JdbcTemplate jdbcTemplateObject) {
		this.jdbcTemplateObject = jdbcTemplateObject;
	}
//
//	@RequestMapping(value = "authenticate", method = RequestMethod.POST)
//	public String updates(@RequestParam("new_password") String n_pass
//			, @RequestParam("confirm_password") String c_pass, HttpServletRequest request) {
//		String user = (String) request.getSession().getAttribute("username");
//		String page = "home-page";
//		if (n_pass.equals(c_pass)) {
//			loginService.updates(n_pass, user);
//			page = "home";
//		}
//		return "redirect:/"+page;
//	}
}
