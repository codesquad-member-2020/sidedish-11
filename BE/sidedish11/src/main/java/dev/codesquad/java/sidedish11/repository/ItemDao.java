package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.*;
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
import java.util.Optional;

@Repository
public class ItemDao {
    private Logger logger = LoggerFactory.getLogger(ItemDao.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public ItemDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Item findById(Long id) {
        String sql = "SELECT item.id AS id, item.hash AS hash, item.title AS title, item.point AS point, item.image AS image," +
                " item.stock AS stock, item.sale_price AS sale_price, item.delivery_fee AS delivery_fee, item.description AS description," +
                " item.normal_price AS normal_price, item.delivery_info AS delivery_info" +
                " FROM item" +
                " WHERE item.id = ?";

        RowMapper<Item> itemMapper = (rs, rowNum) -> {
            Item item = new Item();
            item = getItem(item, rs, id);
            return item;
        };
        return jdbcTemplate.queryForObject(sql, new Object[] {id}, itemMapper);
    }

    public Optional<Item> findByHash(String hash) {
        String sql = "SELECT item.id AS id, item.hash AS hash, item.title AS title, item.point AS point, item.image AS image," +
                " item.stock AS stock, item.sale_price AS sale_price, item.delivery_fee AS delivery_fee, item.description AS description," +
                " item.normal_price AS normal_price, item.delivery_info AS delivery_info" +
                " FROM item" +
                " WHERE hash = ?";

        RowMapper<Item> itemMapper = (rs, rowNum) -> {
            Item item = new Item();
            Long id = rs.getLong("id");
            item = getItem(item, rs, id);
            return item;
        };
        return Optional.ofNullable(jdbcTemplate.queryForObject(sql, new Object[] {hash}, itemMapper));
    }

    public Optional<Item> findByCategoryIdAndHash(Long categoryId, String hash) {
        String sql = "SELECT item.id AS id, item.hash AS hash, item.title AS title, item.point AS point, item.image AS image," +
                " item.stock AS stock, item.sale_price AS sale_price, item.delivery_fee AS delivery_fee, item.description AS description," +
                " item.normal_price AS normal_price, item.delivery_info AS delivery_info, item.category AS category" +
                " FROM item" +
                " WHERE category = ? and hash = ?";

        RowMapper<Item> itemMapper = (rs, rowNum) -> {
            Item item = new Item();
            Long id = rs.getLong("id");
            item = getItem(item, rs, id);
            return item;
        };
        return Optional.ofNullable(jdbcTemplate.queryForObject(sql, new Object[] {categoryId, hash}, itemMapper));
    }

    private Item getItem(Item item, ResultSet rs, Long id) throws SQLException {
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
        item.setDeliveryTypes(getDeliveryType(id));
        item.setThumbImages(getThumbImage(id));
        item.setDetailSections(getDetailSection(id));
        item.setColors(getColor(id));
        return item;
    }

    private List<Badge> getBadges(Long itemId) {
        String sql = "SELECT badge.id AS id, badge.name AS name, badge.item_key AS item_key" +
                " FROM badge" +
                " WHERE badge.item = ?" +
                " ORDER BY item_key";

        RowMapper<Badge> badgeMapper = (rs, rowNum) -> {
            Badge badge = new Badge(rs.getString("name"));
            badge.setId(rs.getLong("id"));
            return badge;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, badgeMapper);
    }

    private List<DeliveryType> getDeliveryType(Long itemId) {
        String sql = "SELECT delivery_type.id AS id, delivery_type.name AS name, delivery_type.item_key AS item_key" +
                " FROM delivery_type" +
                " WHERE delivery_type.item = ?" +
                " ORDER BY item_key";

        RowMapper<DeliveryType> deliveryTypeMapper = (rs, rowNum) -> {
            DeliveryType deliveryType = new DeliveryType();
            deliveryType.setId(rs.getLong("id"));
            deliveryType.setName(rs.getString("name"));
            return deliveryType;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, deliveryTypeMapper);
    }

    private List<ThumbImage> getThumbImage(Long itemId) {
        String sql = "SELECT thumb_image.id AS id, thumb_image.name AS name, thumb_image.item_key AS item_key" +
                " FROM thumb_image" +
                " WHERE thumb_image.item = ?" +
                " ORDER BY item_key";

        RowMapper<ThumbImage> thumbImageMapper = (rs, rowNum) -> {
            ThumbImage thumbImage = new ThumbImage();
            thumbImage.setId(rs.getLong("id"));
            thumbImage.setName(rs.getString("name"));
            return thumbImage;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, thumbImageMapper);
    }

    private List<DetailSection> getDetailSection(Long itemId) {
        String sql = "SELECT detail_section.id AS id, detail_section.name AS name, detail_section.item_key AS item_key" +
                " FROM detail_section" +
                " WHERE detail_section.item = ?" +
                " ORDER BY item_key";

        RowMapper<DetailSection> detailSectionMapper = (rs, rowNum) -> {
            DetailSection detailSection = new DetailSection();
            detailSection.setId(rs.getLong("id"));
            detailSection.setName(rs.getString("name"));
            return detailSection;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, detailSectionMapper);
    }

    private List<Color> getColor(Long itemId) {
        String sql = "SELECT color.id AS id, color.name AS name, color.item_key AS item_key" +
                " FROM color" +
                " WHERE color.item = ?" +
                " ORDER BY item_key";

        RowMapper<Color> colorMapper = (rs, rowNum) -> {
            Color color = new Color(rs.getString("name"));
            color.setId(rs.getLong("id"));
            return color;
        };
        return jdbcTemplate.query(sql, new Object[] {itemId}, colorMapper);
    }
}
