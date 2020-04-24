package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.dto.ItemDetail;
import dev.codesquad.java.sidedish11.dto.ItemDetailResponse;
import dev.codesquad.java.sidedish11.dto.ItemResponse;
import dev.codesquad.java.sidedish11.entity.Item;
import dev.codesquad.java.sidedish11.exception.DataNotFoundException;
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

    @Transactional
    public Item view(Long id) {
        return itemRepository.findById(id).orElseThrow(null);
    }

    @Transactional
    public ItemResponse getItem(Long id, String hash) {
        Item item = findItem(id, hash);
        ItemResponse itemResponse = new ItemResponse(item);
        return itemResponse;
    }

    @Transactional
    public ItemDetailResponse getItemDetail(String hash) {
        Item item = findItem(hash);
        ItemDetail itemDetail = new ItemDetail(item);
        ItemDetailResponse itemDetailResponse = new ItemDetailResponse(itemDetail);
        return itemDetailResponse;
    }

    private Item findItem(Long id, String hash) {
        return itemRepository.findByIdAndHash(id, hash).orElseThrow(() -> new DataNotFoundException("NO DATA"));
    }

    private Item findItem(String hash) {
        return itemRepository.findByHash(hash).orElseThrow(() -> new DataNotFoundException("NO DATA"));
    }
}
