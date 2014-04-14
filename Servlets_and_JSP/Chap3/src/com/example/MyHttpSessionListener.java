package com.example;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class MyHttpSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		Integer sessionCount = (Integer) session.getServletContext().getAttribute("sessionCount");
		if(sessionCount != null){
			sessionCount += 1;			
		} else {
			sessionCount = 1;
		}
		
		session.getServletContext().setAttribute("sessionCount", sessionCount);
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub

	}

}
