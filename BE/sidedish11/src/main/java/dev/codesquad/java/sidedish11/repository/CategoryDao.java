package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Category;
import dev.codesquad.java.sidedish11.entity.Item;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class CategoryDao {
    private Logger logger = LoggerFactory.getLogger(CategoryDao.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public CategoryDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Autowired
    private ItemDao itemDao;

    public Optional<Category> findById(Long id) {
        String sql = "SELECT category.id AS id, category.name AS name, category.title AS title, category.description AS description" +
                " FROM category" +
                " WHERE category.id = ?";

        RowMapper<Category> categoryMapper = (rs, rowNum) -> {
            Category category = new Category();
            category.setId(rs.getLong("id"));
            category.setTitle(rs.getString("title"));
            category.setName(rs.getString("name"));
            category.setDescription(rs.getString("description"));
            category.setItems(getItems(rs.getLong("id")));
            return category;
        };

        try {
            return Optional.ofNullable(jdbcTemplate.queryForObject(sql, new Object[] {id}, categoryMapper));
        } catch (DataAccessException e) {
            logger.debug(">>> error : {}", e.getMessage());
            return Optional.ofNullable(null);
        }
    }

    private List<Item> getItems(Long categoryId) {
        return itemDao.findAllByCategoryId(categoryId).orElse(null);
    }
}
