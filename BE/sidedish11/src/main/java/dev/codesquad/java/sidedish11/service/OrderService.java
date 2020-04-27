package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.dto.OrderResponse;
import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.Color;
import dev.codesquad.java.sidedish11.entity.Item;
import dev.codesquad.java.sidedish11.exception.DataNotFoundException;
import dev.codesquad.java.sidedish11.repository.ItemDao;
import dev.codesquad.java.sidedish11.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;
import static dev.codesquad.java.sidedish11.common.CommonUtils.ON_STOCK_MESSAGE;

@Service
public class OrderService {

    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private ItemDao itemDao;

    @Transactional
    public OrderResponse createOrder(String hash) {
        Item item = findItem(hash);
        if (!item.isValidStock()) {
            item.addBadge(new Badge(SOLD_OUT));
            item.addColor(new Color(ORANGE_YELLOW));
            itemRepository.save(item);
            return new OrderResponse(OUT_OF_STOCK, OUT_OF_STOCK_MESSAGE);
        }
        item.decreaseStock();
        itemRepository.save(item);
        return new OrderResponse(ON_STOCK, ON_STOCK_MESSAGE);
    }

    private Item findItem(String hash) {
        return itemDao.findByHash(hash).orElseThrow(() -> new DataNotFoundException(ITEM_NOT_FOUND));
    }
}
