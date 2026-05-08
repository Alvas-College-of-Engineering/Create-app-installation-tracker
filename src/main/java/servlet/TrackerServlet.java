package servlet;

import model.AppRecord;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet("/TrackerServlet")
public class TrackerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;		
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            switch (action) {
                case "addApp":
                    Storage.saveApp(new AppRecord(
                        request.getParameter("appId"),
                        request.getParameter("appName"),
                        request.getParameter("installDate"),
                        request.getParameter("version"),
                        request.getParameter("status")
                    ));
                    break;
                case "updateStatus":
                    Storage.updateAppStatus(
                        request.getParameter("appId"),
                        request.getParameter("newStatus")
                    );
                    break;
            }
            response.sendRedirect("display.jsp");
        } catch (Exception e) {
            response.getWriter().println("Error processing request: " + e.getMessage());
        }
    }
}