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

import java.util.HashMap;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;
import static dev.codesquad.java.sidedish11.common.CommonUtils.ON_STOCK_MESSAGE;

@Service
public class OrderService {

    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private ItemDao itemDao;

    @Transactional
    public OrderResponse createOrder(String hash, HashMap<String, Integer> order) {
        Item item = findItem(hash);
        int orderNumber = order.get("orderNumber");

        if (!item.isValidStock(orderNumber)) {
            addBadgeAndColor(item);
            return new OrderResponse(OUT_OF_STOCK, OUT_OF_STOCK_MESSAGE);
        }
        if (item.isLastOrder(orderNumber)) {
            item.decreaseStock(orderNumber);
            addBadgeAndColor(item);
            return new OrderResponse(LAST_ONE, LAST_ONE_MESSAGE);
        }
        item.decreaseStock(orderNumber);
        itemRepository.save(item);
        return new OrderResponse(ON_STOCK, ON_STOCK_MESSAGE);
    }

    private void addBadgeAndColor(Item item) {
        item.addBadge(new Badge(SOLD_OUT));
        item.addColor(new Color(ORANGE_YELLOW));
        itemRepository.save(item);
    }

    private Item findItem(String hash) {
        return itemDao.findByHash(hash).orElseThrow(() -> new DataNotFoundException(ITEM_NOT_FOUND));
    }
}
