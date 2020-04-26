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
    void findById_성공() {
        Item item = itemDao.findById(1L).orElse(null);
        assertNotNull(item);
        logger.debug(">>> findById : {}", item);
    }

    @Test
    void findById_실패() {
        Item item = itemDao.findById(999L).orElse(null);
        assertNull(null);
        logger.debug(">>> findById : {}", item);
    }

    @Test
    void findByHash_성공() {
        Item item = itemDao.findByHash("HBDEF").orElse(null);
        assertNotNull(item);
        logger.debug(">>> findByHash : {}", item);
    }

    @Test
    void findByHash_실패() {
        Item item = itemDao.findByHash("AAAAA").orElse(null);
        assertNull(item);
        logger.debug(">>> findByHash : {}", item);
    }
}