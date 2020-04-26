package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.Item;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

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
            item.setBadges(getBadges(id));
            return item;
        };
        return jdbcTemplate.queryForObject(sql, new Object[] {id}, itemMapper);
    }

    private List<Badge> getBadges(Long itemId) {
        String sql = "SELECT badge.id AS id, badge.name AS name, badge.item_key AS item_key FROM badge WHERE badge.item = ? ORDER BY item_key";

        RowMapper<Badge> badgeMapper = (rs, rowNum) -> {
            Badge badge = new Badge(rs.getString("name"));
            badge.setId(rs.getLong("id"));
            return badge;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, badgeMapper);
    }
}
