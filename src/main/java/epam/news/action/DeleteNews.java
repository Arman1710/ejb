package epam.news.action;

import epam.news.services.NewsService;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/deleteNews")
public class DeleteNews extends HttpServlet {

    @EJB
    private NewsService newsService;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] checkedNews = request.getParameterValues("checkedNews");
        if (checkedNews != null) {
            for (String checkboxValue : checkedNews) {
                newsService.deleteNews(Long.valueOf(checkboxValue));
            }
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
