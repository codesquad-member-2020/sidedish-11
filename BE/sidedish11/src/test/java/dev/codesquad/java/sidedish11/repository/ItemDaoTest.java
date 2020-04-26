package dev.codesquad.java.sidedish11.repository;

import dev.codesquad.java.sidedish11.entity.Item;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class ItemDaoTest {
    private Logger logger = LoggerFactory.getLogger(ItemDaoTest.class);

    @Autowired
    private ItemDao itemDao;

    @Test
    void findById() {
        Item item = itemDao.findById(1L);
        assertNotNull(item);
        logger.debug(">>> findById : {}", item);
    }

    @Test
    void findByHash() {
        Item item = itemDao.findByHash("HBDEF").orElseThrow(null);
        assertNotNull(item);
        logger.debug(">>> findByHash : {}", item);
    }
}