package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.entity.Item;
import dev.codesquad.java.sidedish11.repository.ItemRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ItemService {
    private Logger logger = LoggerFactory.getLogger(ItemService.class);

    @Autowired
    private ItemRepository itemRepository;

    @Transactional
    public Iterable<Item> viewAll() {
        return itemRepository.findAll();
    }
}
