package epam.news.action;

import epam.news.model.entity.News;
import epam.news.services.NewsService;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/main")
public class ShowAllNews extends HttpServlet {

    @EJB
    private NewsService newsService;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<News> newsList = newsService.showAllNews();
        request.setAttribute("newsList", newsList);
        request.getRequestDispatcher("/WEB-INF/view/main.jsp").forward(request, response);

    }
}
