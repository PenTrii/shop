package com.msita.training.service;

import com.msita.training.dao.RegistrationDAO;
import com.msita.training.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistrationService {

    @Autowired
    private RegistrationDAO registrationDAO;

    public void registration(String username, String pass, String fullname)  {
        registrationDAO.registration(username, pass, fullname);
    }
}
