package epam.news.converter;

import epam.news.model.dto.NewsDTO;
import epam.news.model.entity.News;

public interface NewsConverter {

    News DTOToEntity(NewsDTO newsDTO);

    NewsDTO entityToDTO(News news);

}
