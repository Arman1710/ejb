package epam.news.action;

import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static epam.news.util.Constants.*;


@WebServlet("/locale")
public class Locale extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String locale = request.getParameter(LOCALE);
        switch (locale) {
            case "ru":
                session.removeAttribute(LOCALE);
                session.setAttribute(LOCALE, new java.util.Locale("ru", "KZ"));
                break;
            case "en":
                session.removeAttribute(LOCALE);
                session.setAttribute(LOCALE, new java.util.Locale("en", "US"));
                break;
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
