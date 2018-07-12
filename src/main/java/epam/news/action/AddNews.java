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

@WebServlet("/admin/addNews")
public class AddNews extends HttpServlet {

    @EJB
    private NewsService newsService;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String brief = request.getParameter("brief");
        String content = request.getParameter("content");

        NewsDTO newsDTO = new NewsDTO();
        newsDTO.setTitle(title);
        newsDTO.setBrief(brief);
        newsDTO.setContent(content);
        newsService.addNews(newsDTO);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
