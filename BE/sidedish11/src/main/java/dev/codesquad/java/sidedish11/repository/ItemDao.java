package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.dto.ItemResponse;
import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.Item;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Set;

@Repository
public class ItemDao {
    private Logger logger = LoggerFactory.getLogger(ItemDao.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public ItemDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Item findById(Long id) {
        String sql = "SELECT * FROM item WHERE id = ?";

        RowMapper<Item> itemMapper = (rs, rowNum) -> {
            Item item = new Item();
            item.setId(rs.getLong("id"));
            item.setHash(rs.getString("hash"));
            item.setImage(rs.getString("image"));
            item.setTitle(rs.getString("title"));
            item.setDescription(rs.getString("description"));
            item.setNormalPrice(rs.getInt("normal_price"));
            item.setSalePrice(rs.getInt("sale_price"));
            item.setPoint(rs.getInt("point"));
            item.setDeliveryInfo(rs.getString("delivery_info"));
            item.setDeliveryFee(rs.getString("delivery_fee"));
            item.setStock(rs.getInt("stock"));
            item.setBadges(badges(id));
            return item;
        };
        return jdbcTemplate.queryForObject(sql, new Object[] {id}, itemMapper);
    }

    private Set<Badge> badges(Long itemId) {
        String sql = "SELECT * FROM badge WHERE badge.item = ?";

        RowMapper<Badge> badgeMapper = (rs, rowNum) -> {
            Badge badge = new Badge(rs.getString("name"));
            badge.setId(rs.getLong("id"));
            logger.debug(">>> here1 : {}", badge);
            return badge;
        };
        Set<Badge> badges = null;
        logger.debug(">>> here2 : {}", jdbcTemplate.query(sql, new Object[] {itemId}, badgeMapper));
        logger.debug(">>> here3 : {}", badges);
        return badges;
    }
}
