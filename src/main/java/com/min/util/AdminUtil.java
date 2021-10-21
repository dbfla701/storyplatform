package com.min.util;

import com.min.Dto.BoardDto;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class AdminUtil {

    public String getAdminName(HttpServletRequest request) {

        HttpSession session = request.getSession();
        BoardDto admin = (BoardDto) session.getAttribute("adminid");

        if (admin == null) return "not-admin";
        return admin.getAdminid();
    }
}
