package epam.news.action;

import epam.news.model.dto.NewsDTO;
import epam.news.services.NewsService;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/editNewsPage")
public class EditNewsPage extends HttpServlet {

    @EJB
    private NewsService newsService;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long newsId = Long.valueOf(request.getParameter("newsId"));
        NewsDTO newsDTO = newsService.selectedNews(newsId);
        request.setAttribute("news", newsDTO);
        request.getRequestDispatcher("/WEB-INF/view/editNews.jsp").forward(request,response);
    }
}
