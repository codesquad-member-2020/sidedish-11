package dev.codesquad.java.sidedish11.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class ItemDao {
    private Logger logger = LoggerFactory.getLogger(ItemDao.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public ItemDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }


}
