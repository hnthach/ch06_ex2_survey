package murach.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import murach.business.User;

public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");   // fix tiếng Việt

        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String heardFrom = request.getParameter("heardFrom");

        // Checkbox: nếu có check thì != null
        String wantsUpdates = request.getParameter("wantsUpdates");
        if (wantsUpdates != null) {
            wantsUpdates = "Yes";
        } else {
            wantsUpdates = "No";
        }

        // Nếu chọn Yes thì mới có contactVia
        String contactVia = request.getParameter("contactVia");
        if (wantsUpdates.equals("No")) {
            contactVia = null;   // để JSP quyết định có hiển thị hay không
        }

        User user = new User(firstName, lastName, email, heardFrom, wantsUpdates, contactVia);

        request.setAttribute("user", user);

        String url = "/survey.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
